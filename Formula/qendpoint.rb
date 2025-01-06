class Qendpoint < Formula
  homepage "https://github.com/the-qa-company/qEndpoint"
  url "https://github.com/the-qa-company/qEndpoint/releases/download/v2.4.1/qendpoint-cli.zip"
  sha256 "052873e3c23e8871146356cea81a8427e6f42d760e6a85ed646e50d04c95200f"

  depends_on "openjdk"  

  def install
    prefix.install Dir["*"]
  end
end
