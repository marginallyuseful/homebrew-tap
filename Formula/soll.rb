class Soll < Formula
  desc "Static import graph analyzer"
  homepage "https://github.com/marginallyuseful/soll"
  version "soll-0.0.1-307671e8"
  license :cannot_represent

  on_macos do
    url "https://github.com/marginallyuseful/homebrew-tap/releases/download/soll-0.0.1-307671e8/soll-macos-arm64"
    sha256 "8fce535f2492f831f44db0de899e3021850bfda9927f09a40309571fc6913291"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/marginallyuseful/homebrew-tap/releases/download/soll-0.0.1-307671e8/soll-linux-arm64"
      sha256 "51a1fe00aa65ddd70fca8275bcdca5885dc0dc5ae14c1479d4adf2d44013bbd2"
    end
    if Hardware::CPU.intel?
      url "https://github.com/marginallyuseful/homebrew-tap/releases/download/soll-0.0.1-307671e8/soll-linux-x64"
      sha256 "723982c8a40f1211624bd0530ce3ce549c2453190f7fecc97af794ff9c755091"
    end
  end

  def install
    bin.install Dir.glob("*").first => "soll"
  end

  test do
    system "#{bin}/soll", "--help"
  end
end
