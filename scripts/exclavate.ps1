param(
)


$prevPwd = $PWD

try {
    $base = (Get-Item $PSScriptRoot).parent
    Set-Location ($base.Fullname)

    $formulaList = Get-Content formula.json | ConvertFrom-Json -AsHashtable

    foreach ($formulaId in $formulaList.Keys) {
        Write-Host "Syncing the formula $formulaId..."

        $formula = $formulaList[$formulaId]
        
        # Fetch release page
        Write-Host "Downloading $($formula.check_url)..."
        $ReleasePage = (Invoke-WebRequest -Uri ($formula.check_url)).Content

        # Check the version regex
        if (!($ReleasePage -match $($formula.version_regex))) {
            AnswerGithubIssue "Can't sync formula $($formulaId): Missing version regex match!"
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
        git add $OutFile
    }
    git config "user.email" "$env:GIT_MAIL"
    git config "user.name" "$env:GIT_USER"
    git config "user.password" "$env:GITHUB_TOKEN"

    git commit -m "Update $formulaId to version $version"
    git push
}
finally {
    $prevPwd | Set-Location
}