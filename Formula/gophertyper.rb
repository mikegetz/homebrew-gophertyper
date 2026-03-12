class Gophertyper < Formula
  desc "Homebrew tap for gophertyper"
  homepage "https://github.com/mikegetz/gophertyper"
  version "1.0.5"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/mikegetz/gophertyper/releases/download/v1.0.5/gophertyper-v1.0.5-darwin-amd64"
      sha256 "0f11220156d463c8a7698cfab2cced8e750e0e9b0930e98ced67f97eb6e2b6ca"
    end

    on_arm do
      url "https://github.com/mikegetz/gophertyper/releases/download/v1.0.5/gophertyper-v1.0.5-darwin-arm64"
      sha256 "f7d03ed97f9bd66f4a459aa70c0601019eb3c22170ad92ec4ba261cf2b7ca72d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mikegetz/gophertyper/releases/download/v1.0.5/gophertyper-v1.0.5-linux-amd64"
      sha256 "cc2b65e20b554858a4bc4a67102fd90e3a933f3379969f53012eaadcd578eb1b"
    end

    on_arm do
      url "https://github.com/mikegetz/gophertyper/releases/download/v1.0.5/gophertyper-v1.0.5-linux-arm64"
      sha256 "f31e269ff29f402edbf6e757a976ef4574493e98bbb7f4c084bce094c3da7b3d"
    end
  end

  def install
    bin.install Dir["gophertyper-*"][0] => "gophertyper"
  end

  test do
    assert_predicate bin/"gophertyper", :executable?
  end
end
