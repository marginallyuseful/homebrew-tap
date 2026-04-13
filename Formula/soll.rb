class Soll < Formula
  desc "Static import graph analyzer"
  homepage "https://github.com/marginallyuseful/soll"
  version "soll-0.0.1-c54e094a"
  license :cannot_represent

  on_macos do
    url "https://github.com/marginallyuseful/homebrew-tap/releases/download/soll-0.0.1-c54e094a/soll-macos-arm64"
    sha256 "f2cc10d60847c825e291d40def9182b9bde4afd57d3c759d2e1fb66d640796a4"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/marginallyuseful/homebrew-tap/releases/download/soll-0.0.1-c54e094a/soll-linux-arm64"
      sha256 "d102cf7051aa6905b9d6eef63dcfde32d95c958f8c4b651d2242b84797f8a9be"
    end
    if Hardware::CPU.intel?
      url "https://github.com/marginallyuseful/homebrew-tap/releases/download/soll-0.0.1-c54e094a/soll-linux-x64"
      sha256 "3c358bd05ddccb0260c5a01e2874aeb6066b2707451ed5d6da425feba3f2ac2b"
    end
  end

  def install
    bin.install Dir.glob("*").first => "soll"
  end

  test do
    system "#{bin}/soll", "--help"
  end
end
