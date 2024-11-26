class Qendpoint < Formula
  homepage "https://github.com/the-qa-company/qEndpoint"
  url "https://github.com/the-qa-company/qEndpoint/releases/download/v2.2.0/qendpoint-cli.zip"
  sha256 "db6f6dd87adec46030b5603c1ad12379ba79af7e5e66472b92d781987287ebee"

  depends_on "openjdk"  

  def install
    prefix.install Dir["*"]
  end
end
