class Wikichanges < Formula
  homepage "https://github.com/the-qa-company/wiki-changes"
  url "https://github.com/the-qa-company/wiki-changes/releases/download/v1.4.0/wikidata-changes.zip"
  sha256 "a275b6e1a8b2cca26fc9fd8c14f4afa5135809d066c96d8588e81dc32384d5af"

  depends_on "openjdk"  

  def install
    prefix.install Dir["*"]
  end
end
