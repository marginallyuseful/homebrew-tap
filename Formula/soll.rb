class Soll < Formula
  desc "Static import graph analyzer"
  homepage "https://github.com/marginallyuseful/soll"
  version "soll-0.0.1-c259245a"
  license :cannot_represent

  on_macos do
    url "https://github.com/marginallyuseful/homebrew-tap/releases/download/soll-0.0.1-c259245a/soll-macos-arm64"
    sha256 "b9aca0eda9251059be773a93f70a3cd8b1a1bfaa81d634c69ed98ea7063d1783"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/marginallyuseful/homebrew-tap/releases/download/soll-0.0.1-c259245a/soll-linux-arm64"
      sha256 "6335c9a38ed6e207ec03af4112bec304f494364d7fde924530ebbd18d4ad5471"
    end
    if Hardware::CPU.intel?
      url "https://github.com/marginallyuseful/homebrew-tap/releases/download/soll-0.0.1-c259245a/soll-linux-x64"
      sha256 "0eed50bc6570aa6044f796eb8c721a78588909ebcbf4dfcdb6794f04419c0020"
    end
  end

  def install
    bin.install Dir.glob("*").first => "soll"
  end

  test do
    system "#{bin}/soll", "--help"
  end
end
