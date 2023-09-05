class Qendpoint < Formula
  homepage "https://github.com/the-qa-company/qEndpoint"
  url "https://github.com/the-qa-company/qEndpoint/releases/download/v1.13.6/qendpoint-cli.zip"
  sha256 "7c77863ca1c953c6c2d6d1e49a4203d131ee7418798596f52d840c066e1b1bce"

  depends_on "openjdk"  

  def install
    prefix.install Dir["*"]
  end
end
