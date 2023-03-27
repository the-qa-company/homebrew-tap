class Qendpoint < Formula
  homepage "https://github.com/the-qa-company/qEndpoint"
  url "https://github.com/the-qa-company/qEndpoint/releases/download/v1.12.0/qendpoint-cli.zip"
  sha256 "5fd922df5a11e4586872f93814204b172aeefa4318f42b52385d8305b59951a4"

  depends_on "openjdk"  

  def install
    prefix.install Dir["*"]
  end
end
