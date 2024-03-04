class Qendpoint < Formula
  homepage "https://github.com/the-qa-company/qEndpoint"
  url "https://github.com/the-qa-company/qEndpoint/releases/download/v1.15.6/qendpoint-cli.zip"
  sha256 "c1fcd6b888dcf8d56eeb0be88ee8433922ee5504ba671021133a4b638341eaf4"

  depends_on "openjdk"  

  def install
    prefix.install Dir["*"]
  end
end
