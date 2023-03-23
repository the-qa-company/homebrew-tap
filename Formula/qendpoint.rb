class Qendpoint < Formula
  homepage "https://github.com/the-qa-company/qEndpoint"
  url "https://github.com/the-qa-company/qEndpoint/releases/download/v1.11.3/qendpoint-cli.zip"
  sha256 "1e9087da32c90e251ac64811c7817096431de2706d87cd45d50154bf77712303"

  depends_on "openjdk"  

  def install
    prefix.install Dir["*"]
  end
end
