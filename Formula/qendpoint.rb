class Qendpoint < Formula
  homepage "https://github.com/the-qa-company/qEndpoint"
  url "https://github.com/the-qa-company/qEndpoint/releases/download/v1.11.2/qendpoint-cli.zip"
  sha256 "811d97c5bdd059df660c69874b92dbdabb2f65938739175a789128b5eedd776c"

  depends_on "openjdk"  

  def install
    prefix.install Dir["*"]
  end
end
