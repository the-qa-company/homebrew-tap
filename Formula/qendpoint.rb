class Qendpoint < Formula
  homepage "https://github.com/the-qa-company/qEndpoint"
  url "https://github.com/the-qa-company/qEndpoint/releases/download/v2.4.2/qendpoint-cli.zip"
  sha256 "ff5dd1b32ae22f74487afb4b681642b8ef1ae768c61e385c087f8e0091bbf3a1"

  depends_on "openjdk"  

  def install
    prefix.install Dir["*"]
  end
end
