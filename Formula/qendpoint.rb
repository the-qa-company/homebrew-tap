class Qendpoint < Formula
  homepage "https://github.com/the-qa-company/qEndpoint"
  url "https://github.com/the-qa-company/qEndpoint/releases/download/v2.3.0/qendpoint-cli.zip"
  sha256 "9a7f183b569d7ffe54f7e792da12e99cbb755c12b2c592bfb4f1ea496ca7ebdd"

  depends_on "openjdk"  

  def install
    prefix.install Dir["*"]
  end
end
