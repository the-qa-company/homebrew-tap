class Qendpoint < Formula
  homepage "https://github.com/the-qa-company/qEndpoint"
  url "https://github.com/the-qa-company/qEndpoint/releases/download/v1.13.8/qendpoint-cli.zip"
  sha256 "3f36ba545ef7b92acd7a169b266332638b1f1d6dd010798ec309b0b217946040"

  depends_on "openjdk"  

  def install
    prefix.install Dir["*"]
  end
end
