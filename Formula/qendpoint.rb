class Qendpoint < Formula
  homepage "https://github.com/the-qa-company/qEndpoint"
  url "https://github.com/the-qa-company/qEndpoint/releases/download/v1.15.5/qendpoint-cli.zip"
  sha256 "b2aee38c21f54308a1d23d8bc6092f7b55df9f688a9acead15b2f5e330ee67ee"

  depends_on "openjdk"  

  def install
    prefix.install Dir["*"]
  end
end
