class Soll < Formula
  desc "Static import graph analyzer"
  homepage "https://github.com/marginallyuseful/soll"
  version "soll-0.0.1-b5bbc2e6"
  license :cannot_represent

  on_macos do
    url "https://github.com/marginallyuseful/homebrew-tap/releases/download/soll-0.0.1-b5bbc2e6/soll-macos-arm64"
    sha256 "2b4cabe7fd63d8c9892a9ee85b65c3ae0966f2a863d7f79a6dec4034e9143c25"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/marginallyuseful/homebrew-tap/releases/download/soll-0.0.1-b5bbc2e6/soll-linux-arm64"
      sha256 "2c668b97bab40aceef6c73ac1e843ef0135b78077375c314fe56869ae89e0741"
    end
    if Hardware::CPU.intel?
      url "https://github.com/marginallyuseful/homebrew-tap/releases/download/soll-0.0.1-b5bbc2e6/soll-linux-x64"
      sha256 "55942c174cf15cc124585afe6199c8b4ab29d94c6401824679e8c745583ba4c0"
    end
  end

  def install
    bin.install Dir.glob("*").first => "soll"
  end

  test do
    system "#{bin}/soll", "--help"
  end
end
