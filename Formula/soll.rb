class Soll < Formula
  desc "Static import graph analyzer"
  homepage "https://github.com/marginallyuseful/soll"
  version "soll-0.0.1-b8d23d5e"
  license :cannot_represent

  on_macos do
    url "https://github.com/marginallyuseful/homebrew-tap/releases/download/soll-0.0.1-b8d23d5e/soll-macos-arm64"
    sha256 "fe22dc63e8889ff615dc63d0a56cf97b65e624942cf8cb84afed94d88d670f54"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/marginallyuseful/homebrew-tap/releases/download/soll-0.0.1-b8d23d5e/soll-linux-arm64"
      sha256 "12f95ca44f055f5938de0d8e3d0b8355745973d433cb2ecd545225f260751949"
    end
    if Hardware::CPU.intel?
      url "https://github.com/marginallyuseful/homebrew-tap/releases/download/soll-0.0.1-b8d23d5e/soll-linux-x64"
      sha256 "64e08a7a29bd3aa912f5f279995e8febaa35b39393f302c6c0966cbe74a6ff6c"
    end
  end

  def install
    bin.install Dir.glob("*").first => "soll"
  end

  test do
    system "#{bin}/soll", "--help"
  end
end
