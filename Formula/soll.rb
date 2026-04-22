class Soll < Formula
  desc "Static import graph analyzer"
  homepage "https://github.com/marginallyuseful/soll"
  version "soll-0.0.1-613d2bf8"
  license :cannot_represent

  on_macos do
    url "https://github.com/marginallyuseful/homebrew-tap/releases/download/soll-0.0.1-613d2bf8/soll-macos-arm64"
    sha256 "cafe3d8ad0196bdce76a08ccc859321785d7d3160355c68f8bf0bf97ec9ec0ad"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/marginallyuseful/homebrew-tap/releases/download/soll-0.0.1-613d2bf8/soll-linux-arm64"
      sha256 "18b518b9bc4f01cff83f035de8eae75835dead3030c5cf328dd3c86e89fd3b50"
    end
    if Hardware::CPU.intel?
      url "https://github.com/marginallyuseful/homebrew-tap/releases/download/soll-0.0.1-613d2bf8/soll-linux-x64"
      sha256 "a1ba1e8b55a0e7534af4d7f34cec98cd45d1030d18d684e7c915f8357d98d798"
    end
  end

  def install
    bin.install Dir.glob("*").first => "soll"
  end

  test do
    system "#{bin}/soll", "--help"
  end
end
