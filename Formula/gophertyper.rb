class Gophertyper< Formula
  desc "Homebrew tap for gophertyper"
  homepage "https://github.com/mikegetz/gophertyper"
  version "1.0.4"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/mikegetz/gophertyper/releases/download/v1.0.4/gophertyper-v1.0.4-darwin-amd64"
      sha256 "eca80fa6716119e281493a0ff52966f528399d906aec012cfaf2152d064dd9e9"
    end

    on_arm do
      url "https://github.com/mikegetz/gophertyper/releases/download/v1.0.4/gophertyper-v1.0.4-darwin-arm64"
      sha256 "50a86c0468837353323b03bd9804d70134c9de8b507b4c3abfce4e37ebeb99ee"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mikegetz/gophertyper/releases/download/v1.0.4/gophertyper-v1.0.4-linux-amd64"
      sha256 "51c164f8633f167efba4372199f81c6663f45cd47a324abc6576812a8cedb309"
    end

    on_arm do
      url "https://github.com/mikegetz/gophertyper/releases/download/v1.0.4/gophertyper-v1.0.4-linux-arm64"
      sha256 "bef53941fd5230c50f021a0b934ac098e5483e6c17837f389bba25366185feb7"
    end
  end

  def install
    bin.install Dir["gophertyper-*"].first => "gophertyper"
  end

  test do
    assert_predicate bin/"gophertyper", :executable?
  end
end
