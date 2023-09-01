class Qendpoint < Formula
  homepage "https://github.com/the-qa-company/qEndpoint"
  url "https://github.com/the-qa-company/qEndpoint/releases/download/v1.13.4/qendpoint-cli.zip"
  sha256 "8201679579a80b5773ecd92434e752660adf85611dd3ddf7bba6e48dd2d483f2"

  depends_on "openjdk"  

  def install
    prefix.install Dir["*"]
  end
end
