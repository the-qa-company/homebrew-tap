class Qendpoint < Formula
  homepage "https://github.com/the-qa-company/qEndpoint"
  url "https://github.com/the-qa-company/qEndpoint/releases/download/v1.14.1/qendpoint-cli.zip"
  sha256 "8bacb6a5638be265a97ec2783ec508d66c8a79462928bd0df608569f244f77eb"

  depends_on "openjdk"  

  def install
    prefix.install Dir["*"]
  end
end
