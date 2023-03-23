param(
    [string]
    $Comment,
    $GitUser,
    $GitMail,
    $GitPushUser,
    $IssueNumber
)

if (!$Comment.StartsWith("/")) {
    Write-Host "Not a command"
    return
}

$bodyCmd = $Comment.SubString(1).Split(" ")

function AnswerGithubIssue {
    param (
        $Message
    )
    Write-Host "send '$Message' to issue #$IssueNumber"

    if ($null -ne $IssueNumber) {
        gh issue comment $IssueNumber --body "$Message"
    } else {
        Write-Host "Ignore sending issue to GH"
    }
}


$prevPwd = $PWD

try {
    $base = (Get-Item $PSScriptRoot).parent
    Set-Location ($base.Fullname)

    $formulaList = Get-Content formula.json | ConvertFrom-Json

    switch ($bodyCmd[0]) {
        "sync" { 
            # Test argument count
            if ($bodyCmd.Count -lt 2) {
                AnswerGithubIssue "Missing formula name: /sync (formula)"
                return
            }

            # Test if we know this formula
            $formula = $formulaList.($bodyCmd[1])
            if ($null -eq $formula) {
                AnswerGithubIssue "Unknown formula: $($bodyCmd[1])"
                return
            }

            $formulaId = "$($formula.id)".ToLower()

            Write-Host "Syncing the formula $formulaId..."
            
            # Fetch release page
            Write-Host "Downloading $($formula.check_url)..."
            $ReleasePage = (Invoke-WebRequest -Uri ($formula.check_url)).Content

            # Check the version regex
            if (!($ReleasePage -match $($formula.version_regex))) {
                AnswerGithubIssue "Can't sync formula $formulaId: Missing version regex match!"
                return
            }

            $version = $Matches[1]

            Write-Host "Find version: $version"

            $downloadURI = $formula.download_uri.replace("{{version}}", $version)

            $TempFile = "tempFormulaDownload.bin"

            Invoke-WebRequest -Uri $downloadURI -OutFile "$TempFile"

            $hash = (Get-FileHash $TempFile -Algorithm SHA256).Hash.ToLower()

            Remove-Item $TempFile

            Write-Host "Find hash: $hash"

            $OutFile = "Formula/$formulaId.rb"

            Write-Host "Writing new formula in $OutFile"
            @"
class $($formula.id) < Formula
  homepage "$($formula.homepage)"
  url "$downloadURI"
  sha256 "$hash"

$($formula.add)
end
"@ > $OutFile
            git config "user.email" $GitMail
            
            git add $OutFile
            git commit -m "Update $formulaId to version $version"
            gh repo sync

            AnswerGithubIssue "the formula $formulaId is now sync with the version $version."
            break
        }
        Default { 
            Write-Error "Unknow command: $($bodyCmd[0])"
            return
        }
    }
} finally {
  $prevPwd | Set-Location
}