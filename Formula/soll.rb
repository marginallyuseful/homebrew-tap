class Soll < Formula
  desc "Static import graph analyzer"
  homepage "https://github.com/marginallyuseful/soll"
  version "soll-0.0.1-23ed8d52"
  license :cannot_represent

  on_macos do
    url "https://github.com/marginallyuseful/homebrew-tap/releases/download/soll-0.0.1-23ed8d52/soll-macos-arm64"
    sha256 "a79e3356baf5399411771c651e4d4d068f82580c40cd099ba7096476ed739510"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/marginallyuseful/homebrew-tap/releases/download/soll-0.0.1-23ed8d52/soll-linux-arm64"
      sha256 "12bae5a907d387a6859c2f3294b5a9f4116bce8f53e576aa28b4e31db1a411eb"
    end
    if Hardware::CPU.intel?
      url "https://github.com/marginallyuseful/homebrew-tap/releases/download/soll-0.0.1-23ed8d52/soll-linux-x64"
      sha256 "55e3813e2dc9752ddfc86651df39a58b356a5b86acb0a724994cd693239e7ec4"
    end
  end

  def install
    bin.install Dir.glob("*").first => "soll"
  end

  test do
    system "#{bin}/soll", "--help"
  end
end
