class Gophertyper< Formula
  desc "Homebrew tap for gophertyper"
  homepage "https://github.com/mikegetz/gophertyper"
  version "1.0.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/mikegetz/gophertyper/releases/download/v1.0.2/gophertyper-v1.0.2-darwin-amd64"
      sha256 "96a83f290c3502a6e450a8c57bf02433b8921c286532514c746e5f2a7c260743"
    end

    on_arm do
      url "https://github.com/mikegetz/gophertyper/releases/download/v1.0.2/gophertyper-v1.0.2-darwin-arm64"
      sha256 "40d8d8d5d9cfde87c6a0dcf45ddffaca7a41385b6cfa29ab4eb8244db76e2adb"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mikegetz/gophertyper/releases/download/v1.0.2/gophertyper-v1.0.2-linux-amd64"
      sha256 "05b0f85eb8365383b1af24e4d18ea359a06c8d6f8944a73c8c554075c8d95bd1"
    end

    on_arm do
      url "https://github.com/mikegetz/gophertyper/releases/download/v1.0.2/gophertyper-v1.0.2-linux-arm64"
      sha256 "f67804d4fdc3c3c6f5719a9d148912c84814dec29a3eb684960247bc6d6a68db"
    end
  end

  def install
    bin.install Dir["gophertyper-*"].first => "gophertyper"
  end

  test do
    assert_predicate bin/"gophertyper", :executable?
  end
end
