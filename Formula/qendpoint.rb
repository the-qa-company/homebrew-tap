class Qendpoint < Formula
  homepage "https://github.com/the-qa-company/qEndpoint"
  url "https://github.com/the-qa-company/qEndpoint/releases/download/v2.4.0/qendpoint-cli.zip"
  sha256 "74f372e4c56186372e240fff55649f09ad09c3bc975f93f80fb9e871ef6a5607"

  depends_on "openjdk"  

  def install
    prefix.install Dir["*"]
  end
end
