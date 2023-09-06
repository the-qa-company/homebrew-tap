class Qendpoint < Formula
  homepage "https://github.com/the-qa-company/qEndpoint"
  url "https://github.com/the-qa-company/qEndpoint/releases/download/v1.13.7/qendpoint-cli.zip"
  sha256 "0185bcd634fb7169ccd7d199046d546cc986f5dc04dd460842900dfb1fcba3e3"

  depends_on "openjdk"  

  def install
    prefix.install Dir["*"]
  end
end
