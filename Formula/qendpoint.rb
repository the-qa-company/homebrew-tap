class Qendpoint < Formula
  homepage "https://github.com/the-qa-company/qEndpoint"
  url "https://github.com/the-qa-company/qEndpoint/releases/download/v1.16.0/qendpoint-cli.zip"
  sha256 "994f85a4a05d4e238b6f0713d7b80d67beb87f29164d72ffee03dd94f7d0a533"

  depends_on "openjdk"  

  def install
    prefix.install Dir["*"]
  end
end
