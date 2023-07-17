class Qendpoint < Formula
  homepage "https://github.com/the-qa-company/qEndpoint"
  url "https://github.com/the-qa-company/qEndpoint/releases/download/v1.13.1/qendpoint-cli.zip"
  sha256 "e1409147c184f96975781313b0f5d760c367ed5a31ea94406c6244ab7e833b38"

  depends_on "openjdk"  

  def install
    prefix.install Dir["*"]
  end
end
