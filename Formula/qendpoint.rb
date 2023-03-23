class Qendpoint < Formula
  homepage "https://github.com/the-qa-company/qEndpoint"
  url "https://github.com/the-qa-company/qEndpoint/releases/download/v1.11.0/qendpoint-cli.zip"
  sha256 "aa08ea4e4fce7358b78d9e0bb5d2bed1f83099f85bb9454c468fd6f5b83f6cfc"

  depends_on "openjdk"
  
  def install
    prefix.install Dir["*"]
  end
end