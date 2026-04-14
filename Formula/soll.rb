class Soll < Formula
  desc "Static import graph analyzer"
  homepage "https://github.com/marginallyuseful/soll"
  version "soll-0.0.1-aa460c83"
  license :cannot_represent

  on_macos do
    url "https://github.com/marginallyuseful/homebrew-tap/releases/download/soll-0.0.1-aa460c83/soll-macos-arm64"
    sha256 "a7c5d126c5e58a69fca68bb11270158f22e73fd6fb5b802c7bfb1c1467f31a7f"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/marginallyuseful/homebrew-tap/releases/download/soll-0.0.1-aa460c83/soll-linux-arm64"
      sha256 "95c573ea13a1ec82b3174c1c70e60bb64c9db8d4f9072ce3e3477369cb1b08ea"
    end
    if Hardware::CPU.intel?
      url "https://github.com/marginallyuseful/homebrew-tap/releases/download/soll-0.0.1-aa460c83/soll-linux-x64"
      sha256 "6c4ad3b4edf7ed16be514178768683de97a1df3b4d5dfd0edcda8ea6b3590c85"
    end
  end

  def install
    bin.install Dir.glob("*").first => "soll"
  end

  test do
    system "#{bin}/soll", "--help"
  end
end
