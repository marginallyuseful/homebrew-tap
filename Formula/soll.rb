class Soll < Formula
  desc "Static import graph analyzer"
  homepage "https://github.com/marginallyuseful/soll"
  version "soll-0.0.1-05b9ce9b"
  license :cannot_represent

  on_macos do
    url "https://github.com/marginallyuseful/homebrew-tap/releases/download/soll-0.0.1-05b9ce9b/soll-macos-arm64"
    sha256 "9b51c9b8763f636dd43437d64f122ca03b1be2239857cfde39f8f9e83b5b2691"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/marginallyuseful/homebrew-tap/releases/download/soll-0.0.1-05b9ce9b/soll-linux-arm64"
      sha256 "65ae773b73ea2f44608b873fd6e68cb63dc38ef694c35027a805bd8038b5d5a8"
    end
    if Hardware::CPU.intel?
      url "https://github.com/marginallyuseful/homebrew-tap/releases/download/soll-0.0.1-05b9ce9b/soll-linux-x64"
      sha256 "892eb5295f8ed80ad6f53e97bb72df823a1adbc3c76527a2d676f815f709d1cd"
    end
  end

  def install
    bin.install Dir.glob("*").first => "soll"
  end

  test do
    system "#{bin}/soll", "--help"
  end
end
