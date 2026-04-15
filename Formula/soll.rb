class Soll < Formula
  desc "Static import graph analyzer"
  homepage "https://github.com/marginallyuseful/soll"
  version "soll-0.0.1-66bca1a5"
  license :cannot_represent

  on_macos do
    url "https://github.com/marginallyuseful/homebrew-tap/releases/download/soll-0.0.1-66bca1a5/soll-macos-arm64"
    sha256 "5da454ae3787b17c1d3a08bf355ce4f1fecbab71ac5bbb73008f5e970647a3ed"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/marginallyuseful/homebrew-tap/releases/download/soll-0.0.1-66bca1a5/soll-linux-arm64"
      sha256 "923313faaaa472b8708342de9d3d0835173f35e9327357ef86eaff6e73d58373"
    end
    if Hardware::CPU.intel?
      url "https://github.com/marginallyuseful/homebrew-tap/releases/download/soll-0.0.1-66bca1a5/soll-linux-x64"
      sha256 "66f926104ed38d32c41f4d528ff7b777a59f7129ac3dc5ddbaa53eed40d5a91c"
    end
  end

  def install
    bin.install Dir.glob("*").first => "soll"
  end

  test do
    system "#{bin}/soll", "--help"
  end
end
