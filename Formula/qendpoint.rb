class Qendpoint < Formula
  homepage "https://github.com/the-qa-company/qEndpoint"
  url "https://github.com/the-qa-company/qEndpoint/releases/download/v2.5.0/qendpoint-cli.zip"
  sha256 "cfa3bf4274cbba3d6cabd74e5c9913333d74a4053f4065200192cdcac3041aaa"

  depends_on "openjdk"  

  def install
    prefix.install Dir["*"]
  end
end
