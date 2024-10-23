class Qendpoint < Formula
  homepage "https://github.com/the-qa-company/qEndpoint"
  url "https://github.com/the-qa-company/qEndpoint/releases/download/v2.1.2/qendpoint-cli.zip"
  sha256 "9d61be45b9363c655cdfd9e971641cc6671880020b035aea99324b79f21886aa"

  depends_on "openjdk"  

  def install
    prefix.install Dir["*"]
  end
end
