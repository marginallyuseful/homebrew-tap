class Soll < Formula
  desc "Static import graph analyzer"
  homepage "https://github.com/marginallyuseful/soll"
  version "soll-0.0.1-daf9bf2b"
  license :cannot_represent

  on_macos do
    url "https://github.com/marginallyuseful/homebrew-tap/releases/download/soll-0.0.1-daf9bf2b/soll-macos-arm64"
    sha256 "2deb3fda4b20b53ea7d85868ad762dd9c694615015027511f5934e4b2a59185d"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/marginallyuseful/homebrew-tap/releases/download/soll-0.0.1-daf9bf2b/soll-linux-arm64"
      sha256 "f6d9c5cdef21da3de53897ed122c522324ccda4d85a4666a5365a3e3d25e3f5a"
    end
    if Hardware::CPU.intel?
      url "https://github.com/marginallyuseful/homebrew-tap/releases/download/soll-0.0.1-daf9bf2b/soll-linux-x64"
      sha256 "75981bcfb4073a622b909d44c6aa1a72421ec0398d33517617488519d3043d37"
    end
  end

  def install
    bin.install Dir.glob("*").first => "soll"
  end

  test do
    system "#{bin}/soll", "--help"
  end
end
