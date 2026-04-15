class Soll < Formula
  desc "Static import graph analyzer"
  homepage "https://github.com/marginallyuseful/soll"
  version "soll-0.0.1-e568e861"
  license :cannot_represent

  on_macos do
    url "https://github.com/marginallyuseful/homebrew-tap/releases/download/soll-0.0.1-e568e861/soll-macos-arm64"
    sha256 "fbe5d343e4f4e34555d9471df7b2737d164b60dcba998850128609908c21b5b6"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/marginallyuseful/homebrew-tap/releases/download/soll-0.0.1-e568e861/soll-linux-arm64"
      sha256 "c8dae755e7a04b1d67c81eea5c408db4c771e341ea99c1ef78f44ae45b2d107b"
    end
    if Hardware::CPU.intel?
      url "https://github.com/marginallyuseful/homebrew-tap/releases/download/soll-0.0.1-e568e861/soll-linux-x64"
      sha256 "4c740c455b487e044cf76192f5e37c84dafb69f823ee83a05098244cc257935f"
    end
  end

  def install
    bin.install Dir.glob("*").first => "soll"
  end

  test do
    system "#{bin}/soll", "--help"
  end
end
