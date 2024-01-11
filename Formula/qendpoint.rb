class Qendpoint < Formula
  homepage "https://github.com/the-qa-company/qEndpoint"
  url "https://github.com/the-qa-company/qEndpoint/releases/download/v1.15.0/qendpoint-cli.zip"
  sha256 "dcb9b3b31f03ac887792614ccdcec6646dc89ca37b7aebbeed626af13ec3c493"

  depends_on "openjdk"  

  def install
    prefix.install Dir["*"]
  end
end
