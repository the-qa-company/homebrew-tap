class Qendpoint < Formula
  homepage "https://github.com/the-qa-company/qEndpoint"
  url "https://github.com/the-qa-company/qEndpoint/releases/download/v2.1.1/qendpoint-cli.zip"
  sha256 "362c2673389ea243cbfc275017f0535d3103b55e42f24d1c383b46681b8aa241"

  depends_on "openjdk"  

  def install
    prefix.install Dir["*"]
  end
end
