class Qendpoint < Formula
  homepage "https://github.com/the-qa-company/qEndpoint"
  url "https://github.com/the-qa-company/qEndpoint/releases/download/v1.16.1/qendpoint-cli.zip"
  sha256 "755a80b00e2d7a9e9c97cc4d1dffc33d5efce693c871abae7f10b0fb20087da2"

  depends_on "openjdk"  

  def install
    prefix.install Dir["*"]
  end
end
