class Soll < Formula
  desc "Static import graph analyzer"
  homepage "https://github.com/marginallyuseful/soll"
  version "soll-0.0.1-79e6bf1d"
  license :cannot_represent

  on_macos do
    url "https://github.com/marginallyuseful/homebrew-tap/releases/download/soll-0.0.1-79e6bf1d/soll-macos-arm64"
    sha256 "e136adc28302c0a4736b62241b2fe3af7567b43e6e7b8680fab19a6eef2a5afd"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/marginallyuseful/homebrew-tap/releases/download/soll-0.0.1-79e6bf1d/soll-linux-arm64"
      sha256 "6f13e1b8f20aed4aacf64042628d5bc05470aab78f9a3add15b20eb6acda37e8"
    end
    if Hardware::CPU.intel?
      url "https://github.com/marginallyuseful/homebrew-tap/releases/download/soll-0.0.1-79e6bf1d/soll-linux-x64"
      sha256 "c048f74bbde4bb4407b21f9ba9a1a89d97d07177b1562b5866a574d05dd6ac1b"
    end
  end

  def install
    bin.install Dir.glob("*").first => "soll"
  end

  test do
    system "#{bin}/soll", "--help"
  end
end
