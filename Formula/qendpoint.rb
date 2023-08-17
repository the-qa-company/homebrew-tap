class Qendpoint < Formula
  homepage "https://github.com/the-qa-company/qEndpoint"
  url "https://github.com/the-qa-company/qEndpoint/releases/download/v1.13.3/qendpoint-cli.zip"
  sha256 "effcedcd9084226a4d01a4fd7f1217e8787441f043348f959b88c92a467605cd"

  depends_on "openjdk"  

  def install
    prefix.install Dir["*"]
  end
end
