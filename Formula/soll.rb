class Soll < Formula
  desc "Static import graph analyzer"
  homepage "https://github.com/marginallyuseful/soll"
  version "soll-0.0.1-00d90eb2"
  license :cannot_represent

  on_macos do
    url "https://github.com/marginallyuseful/homebrew-tap/releases/download/soll-0.0.1-00d90eb2/soll-macos-arm64"
    sha256 "a9000085e957d1f6ec88eadca2c2df42bf471387cc43a2532ce8f2bb0c61088f"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/marginallyuseful/homebrew-tap/releases/download/soll-0.0.1-00d90eb2/soll-linux-arm64"
      sha256 "712af414d3525749da68a4677a16357b1d7eac83bfc7022c34dd23ddac73cd6b"
    end
    if Hardware::CPU.intel?
      url "https://github.com/marginallyuseful/homebrew-tap/releases/download/soll-0.0.1-00d90eb2/soll-linux-x64"
      sha256 "a4b9c76e3f97583ce1f9e9e2de1ae1a17a8c9d1e2c17169c76821159c3d0e7de"
    end
  end

  def install
    bin.install Dir.glob("*").first => "soll"
  end

  test do
    system "#{bin}/soll", "--help"
  end
end
