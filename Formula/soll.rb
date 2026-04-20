class Soll < Formula
  desc "Static import graph analyzer"
  homepage "https://github.com/marginallyuseful/soll"
  version "soll-0.0.1-d46849e1"
  license :cannot_represent

  on_macos do
    url "https://github.com/marginallyuseful/homebrew-tap/releases/download/soll-0.0.1-d46849e1/soll-macos-arm64"
    sha256 "3c53e7507f99edd971232d46bfc19b3ec7a11cff1d19783dece78007ad172679"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/marginallyuseful/homebrew-tap/releases/download/soll-0.0.1-d46849e1/soll-linux-arm64"
      sha256 "2091da54ed34588bd7c5393a05266c9c2dfa792fe6ac54c64754b2c219830676"
    end
    if Hardware::CPU.intel?
      url "https://github.com/marginallyuseful/homebrew-tap/releases/download/soll-0.0.1-d46849e1/soll-linux-x64"
      sha256 "2e5ff83209f6888396a0d610d8eb0e7e716587e2c66edef044f037ba11fba527"
    end
  end

  def install
    bin.install Dir.glob("*").first => "soll"
  end

  test do
    system "#{bin}/soll", "--help"
  end
end
