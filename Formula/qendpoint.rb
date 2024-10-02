class Qendpoint < Formula
  homepage "https://github.com/the-qa-company/qEndpoint"
  url "https://github.com/the-qa-company/qEndpoint/releases/download/v2.1.0/qendpoint-cli.zip"
  sha256 "3950aacac4d82966e0dfc185089d174c3c44b7cd4bc315a454ff3c8446603dd3"

  depends_on "openjdk"  

  def install
    prefix.install Dir["*"]
  end
end
