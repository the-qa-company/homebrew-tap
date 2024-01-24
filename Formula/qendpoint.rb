class Qendpoint < Formula
  homepage "https://github.com/the-qa-company/qEndpoint"
  url "https://github.com/the-qa-company/qEndpoint/releases/download/v1.15.1/qendpoint-cli.zip"
  sha256 "7536edd6b4473267aae01049f26e44f0b58339214732a2cb0b96809cdf2bc55b"

  depends_on "openjdk"  

  def install
    prefix.install Dir["*"]
  end
end
