# homebrew-tap

- [homebrew-tap](#homebrew-tap)
  - [Usage](#usage)
  - [Internal usage](#internal-usage)

🍻 Homebrew tap for The QA Company softwares

## Usage

You install a formula with the command `the-qa-company/tap/fomula_name` where `fomula_name` is your formula's name.

You can ask for a sync of a formula (if you think it's not up to date) by sending `/sync (fomula_name)` in an issue.

## Internal usage

To add a new formula, update the [formula.json](formula.json) file by adding a new formula into the main object.

A formula architecture is described as follow:

```json
"my_formula": {
"id": "My_formula",
"homepage": "https://the-qa-company.com/",
"add": "",
"check_url": "https://example.org/My_Formula/update/page.html",
"version_regex": "Release ([\\d.]+)",
"download_uri": "https://example.org/My_Formula/versions/{{version}}/MyFormula.tar.gz"
}
```

- `my_formula` is the formula name
- `"id":` contains the Ruby id for the formula, it should be the formula name with a upper case first character
- `"homepage":` is the home page of the formula
- `"add":` contains the added Ruby code to the formula, see [`qendpoint.rb` formula for an example](Formula\qendpoint.rb)
- `"check_url":` the url to fetch the latest version
- `"version_regex":` the version regex to find the new version name, the version should be matched by the group 1
- `"download_uri":` is the new download URI of the formula, the `{{version}}` will be replaced by the latest version

Once this is done, run `/sync (fomula_name)` in an issue to sync the formula into the tap. 🍻
