class Qendpoint < Formula
  homepage "https://github.com/the-qa-company/qEndpoint"
  url "https://github.com/the-qa-company/qEndpoint/releases/download/v1.13.2/qendpoint-cli.zip"
  sha256 "60724316d948c024501525c4a9e76fb634001fee8f7b0f01edf3946b7ea3227e"

  depends_on "openjdk"  

  def install
    prefix.install Dir["*"]
  end
end
