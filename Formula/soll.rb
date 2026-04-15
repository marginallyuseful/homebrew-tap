class Soll < Formula
  desc "Static import graph analyzer"
  homepage "https://github.com/marginallyuseful/soll"
  version "soll-0.0.1-e0b5fbed"
  license :cannot_represent

  on_macos do
    url "https://github.com/marginallyuseful/homebrew-tap/releases/download/soll-0.0.1-e0b5fbed/soll-macos-arm64"
    sha256 "4e0beefe2e2eb3cf86e15345fd887407cc4cbe109210db41c8065acc8dae9abf"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/marginallyuseful/homebrew-tap/releases/download/soll-0.0.1-e0b5fbed/soll-linux-arm64"
      sha256 "48380decfbdd233f5fe289718c96fcbcc520a82f612d62ee99928cd495a128a9"
    end
    if Hardware::CPU.intel?
      url "https://github.com/marginallyuseful/homebrew-tap/releases/download/soll-0.0.1-e0b5fbed/soll-linux-x64"
      sha256 "850250701eb9db6b9cb0753dc6091831e064c50dca19a055fc151d511dace1ff"
    end
  end

  def install
    bin.install Dir.glob("*").first => "soll"
  end

  test do
    system "#{bin}/soll", "--help"
  end
end
