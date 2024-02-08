class Qendpoint < Formula
  homepage "https://github.com/the-qa-company/qEndpoint"
  url "https://github.com/the-qa-company/qEndpoint/releases/download/v1.15.2/qendpoint-cli.zip"
  sha256 "5d9aaea15e1497bf5bf621b3070e3aef2cef3bfe6d1ed10cd648b22e20010879"

  depends_on "openjdk"  

  def install
    prefix.install Dir["*"]
  end
end
