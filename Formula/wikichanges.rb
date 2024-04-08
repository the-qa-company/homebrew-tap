class Wikichanges < Formula
  homepage "https://github.com/the-qa-company/wiki-changes"
  url "https://github.com/the-qa-company/wiki-changes/releases/download/v1.3.0/wikidata-changes.zip"
  sha256 "5844380c5b09f6b577f9476a4a6d3c27dd2a74f0a42338e93d4c012bb9270869"

  depends_on "openjdk"  

  def install
    prefix.install Dir["*"]
  end
end
