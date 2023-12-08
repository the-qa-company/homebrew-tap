class Qendpoint < Formula
  homepage "https://github.com/the-qa-company/qEndpoint"
  url "https://github.com/the-qa-company/qEndpoint/releases/download/v1.14.0/qendpoint-cli.zip"
  sha256 "3e7005887b15349b055a5a4e2cc38173375d6207ef2764d5a67a1e908716c6fa"

  depends_on "openjdk"  

  def install
    prefix.install Dir["*"]
  end
end
