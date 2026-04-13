class Soll < Formula
  desc "Static import graph analyzer"
  homepage "https://github.com/marginallyuseful/soll"
  version "soll-0.0.1-fc33f5fb"
  license :cannot_represent

  on_macos do
    url "https://github.com/marginallyuseful/homebrew-tap/releases/download/soll-0.0.1-fc33f5fb/soll-macos-arm64"
    sha256 "301aa681968dca856bb1823b421dc7f67003dba3f0c4d5db40a95d1d830e8f2c"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/marginallyuseful/homebrew-tap/releases/download/soll-0.0.1-fc33f5fb/soll-linux-arm64"
      sha256 "4fd99e0107eaae17c070afe64d7afe4793f0ef505df95c9f4f2e1d5c2f2503ba"
    end
    if Hardware::CPU.intel?
      url "https://github.com/marginallyuseful/homebrew-tap/releases/download/soll-0.0.1-fc33f5fb/soll-linux-x64"
      sha256 "cad68e94bd64ee83a866e69552fd61be4d3131e581824922501ee63f83bed931"
    end
  end

  def install
    bin.install Dir.glob("*").first => "soll"
  end

  test do
    system "#{bin}/soll", "--help"
  end
end
