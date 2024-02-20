class Qendpoint < Formula
  homepage "https://github.com/the-qa-company/qEndpoint"
  url "https://github.com/the-qa-company/qEndpoint/releases/download/v1.15.3/qendpoint-cli.zip"
  sha256 "23609b54f55a4523890ddf437ea32ba969246406d4f983692806e14846fedfb2"

  depends_on "openjdk"  

  def install
    prefix.install Dir["*"]
  end
end
