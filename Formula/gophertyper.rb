class Gophertyper< Formula
  desc "Homebrew tap for gophertyper"
  homepage "https://github.com/mikegetz/gophertyper"
  version "1.0.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/mikegetz/gophertyper/releases/download/v1.0.1/gophertyper-v1.0.1-darwin-amd64"
      sha256 "c3e4a0d53d21cbc7441bec866f52720eb574ac0a1dde5fee3e4bb3b48946d136"
    end

    on_arm do
      url "https://github.com/mikegetz/gophertyper/releases/download/v1.0.1/gophertyper-v1.0.1-darwin-arm64"
      sha256 "5dbdb7b1e78797428e02ad4d93c88c2324b918fbf44c881b80dbe683d3c3e908"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mikegetz/gophertyper/releases/download/v1.0.1/gophertyper-v1.0.1-linux-amd64"
      sha256 "75ad796665ba27aea0fb2077f2b6b8d2eec1cebb38462d03cdd51cf2a10472e1"
    end

    on_arm do
      url "https://github.com/mikegetz/gophertyper/releases/download/v1.0.1/gophertyper-v1.0.1-linux-arm64"
      sha256 "61f006c10df9fa113b2bf410e7bfe84a7ad80764c0d9c0368af045b94230fd45"
    end
  end

  def install
    bin.install Dir["gophertyper-*"].first => "gophertyper"
  end

  test do
    assert_predicate bin/"gophertyper", :executable?
  end
end
