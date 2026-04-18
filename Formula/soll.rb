class Soll < Formula
  desc "Static import graph analyzer"
  homepage "https://github.com/marginallyuseful/soll"
  version "soll-0.0.1-3d437b89"
  license :cannot_represent

  on_macos do
    url "https://github.com/marginallyuseful/homebrew-tap/releases/download/soll-0.0.1-3d437b89/soll-macos-arm64"
    sha256 "b9ea69c9e2951a1ef2f3d04faa359480db9ddef5fa67138296d85f0ac7bff91d"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/marginallyuseful/homebrew-tap/releases/download/soll-0.0.1-3d437b89/soll-linux-arm64"
      sha256 "eb3e35f09b6a242b2068aa5b69bafea880b679746bf95e347d44dbad26d63ba2"
    end
    if Hardware::CPU.intel?
      url "https://github.com/marginallyuseful/homebrew-tap/releases/download/soll-0.0.1-3d437b89/soll-linux-x64"
      sha256 "44a1e122739e21db62f8965129874b0fe1c8035ccab5d581aefc47017fb8f64a"
    end
  end

  def install
    bin.install Dir.glob("*").first => "soll"
  end

  test do
    system "#{bin}/soll", "--help"
  end
end
