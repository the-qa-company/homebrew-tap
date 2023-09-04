class Qendpoint < Formula
  homepage "https://github.com/the-qa-company/qEndpoint"
  url "https://github.com/the-qa-company/qEndpoint/releases/download/v1.13.5/qendpoint-cli.zip"
  sha256 "90bb8b45d7333ff905a67aac3bc5d718f79d2a2c2ac4b7a00063dae5363cd659"

  depends_on "openjdk"  

  def install
    prefix.install Dir["*"]
  end
end
