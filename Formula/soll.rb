class Soll < Formula
  desc "Static import graph analyzer"
  homepage "https://github.com/marginallyuseful/soll"
  version "soll-0.0.1-1bd6c7f9"
  license :cannot_represent

  on_macos do
    url "https://github.com/marginallyuseful/homebrew-tap/releases/download/soll-0.0.1-1bd6c7f9/soll-macos-arm64"
    sha256 "55a56b854bd0dd22d9a36811a50b917d469b2ca2ff0be9f225ee7cbdf95ffa22"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/marginallyuseful/homebrew-tap/releases/download/soll-0.0.1-1bd6c7f9/soll-linux-arm64"
      sha256 "edac2292f9fd5969e6c1f257c71ee12b1b7a09e958a0e2d8ffc7c3ec5ef3d0e1"
    end
    if Hardware::CPU.intel?
      url "https://github.com/marginallyuseful/homebrew-tap/releases/download/soll-0.0.1-1bd6c7f9/soll-linux-x64"
      sha256 "365a94385a258a1c5dbd0d051ecfc803a9d838b3255c593719d10f64e6ed5210"
    end
  end

  def install
    bin.install Dir.glob("*").first => "soll"
  end

  test do
    system "#{bin}/soll", "--help"
  end
end
