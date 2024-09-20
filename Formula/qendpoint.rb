class Qendpoint < Formula
  homepage "https://github.com/the-qa-company/qEndpoint"
  url "https://github.com/the-qa-company/qEndpoint/releases/download/v2.0.1/qendpoint-cli.zip"
  sha256 "9f40f8399e6d52781cd79e32b4a8246fc161864823f390c329637bbee6bda984"

  depends_on "openjdk"  

  def install
    prefix.install Dir["*"]
  end
end
