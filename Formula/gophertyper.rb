class Gophertyper< Formula
  desc "Homebrew tap for gophertyper"
  homepage "https://github.com/mikegetz/gophertyper"
  version "1.0.3"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/mikegetz/gophertyper/releases/download/v1.0.3/gophertyper-v1.0.3-darwin-amd64"
      sha256 "6e88e62ca41c0b3c0e4d3b4e35439f28ba86b5b18ad4c4f34201078efdcdeb4a"
    end

    on_arm do
      url "https://github.com/mikegetz/gophertyper/releases/download/v1.0.3/gophertyper-v1.0.3-darwin-arm64"
      sha256 "55323b795069ede880c7cc81dd8e8f647f4179b16b82c82f351d0135a2c46739"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mikegetz/gophertyper/releases/download/v1.0.3/gophertyper-v1.0.3-linux-amd64"
      sha256 "688097a44e1069daf287f2fd7dc53ec3cc5485d53fecd16812a72ebd2fbea9f5"
    end

    on_arm do
      url "https://github.com/mikegetz/gophertyper/releases/download/v1.0.3/gophertyper-v1.0.3-linux-arm64"
      sha256 "008b2d48580eba9d9337f6af8c97fff83a951f2e8f8f71823455db5b96102bbb"
    end
  end

  def install
    bin.install Dir["gophertyper-*"].first => "gophertyper"
  end

  test do
    assert_predicate bin/"gophertyper", :executable?
  end
end
