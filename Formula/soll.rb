class Soll < Formula
  desc "Static import graph analyzer"
  homepage "https://github.com/marginallyuseful/soll"
  version "6"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/marginallyuseful/soll/releases/download/6/soll-darwin-arm64-sha256.txt"
      sha256 "Not"
    end
    if Hardware::CPU.intel?
      url "undefined"
      sha256 "undefined"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/marginallyuseful/soll/releases/download/6/soll-linux-arm64-gnu-sha256.txt"
      sha256 "Not"
    end
    if Hardware::CPU.intel?
      url "https://github.com/marginallyuseful/soll/releases/download/6/soll-linux-x64-gnu-sha256.txt"
      sha256 "Not"
    end
  end

  def install
    bin.install "soll"
  end

  test do
    system "#{bin}/soll", "--help"
  end
end
