class Soll < Formula
  desc "Static import graph analyzer"
  homepage "https://github.com/marginallyuseful/soll"
  version "14"
  license :cannot_represent

  on_macos do
    url "https://github.com/marginallyuseful/homebrew-tap/releases/download/14/soll-macos-arm64"
    sha256 "e136adc28302c0a4736b62241b2fe3af7567b43e6e7b8680fab19a6eef2a5afd"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/marginallyuseful/homebrew-tap/releases/download/14/soll-linux-arm64"
      sha256 "dc8f3aa48665607fe6114bece7855aa97bf11fd5530a1eed88295934bc76598b"
    end
    if Hardware::CPU.intel?
      url "https://github.com/marginallyuseful/homebrew-tap/releases/download/14/soll-linux-x64"
      sha256 "6d34ec2d4a816ae7d2fa78cdb67085e70a6069d13b26bb1e647c522d6a7bb3a4"
    end
  end

  def install
    bin.install "soll"
  end

  test do
    system "#{bin}/soll", "--help"
  end
end
