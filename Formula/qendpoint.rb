class Qendpoint < Formula
  homepage "https://github.com/the-qa-company/qEndpoint"
  url "https://github.com/the-qa-company/qEndpoint/releases/download/v2.5.4/qendpoint-cli.zip"
  sha256 "329af2239e6367d890d2c5366fc36154ca9d937a65cd65706052e0d656a5b18d"

  depends_on "openjdk"  

  def install
    prefix.install Dir["*"]
  end
end
