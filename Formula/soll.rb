class Soll < Formula
  desc "Static import graph analyzer"
  homepage "https://github.com/marginallyuseful/soll"
  version "soll-0.0.1-25b00999"
  license :cannot_represent

  on_macos do
    url "https://github.com/marginallyuseful/homebrew-tap/releases/download/soll-0.0.1-25b00999/soll-macos-arm64"
    sha256 "d2ac3a0bf6beb3aa8475157a2db6d3e0533ed2fdfa83a8e9877b1b2b6d776709"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/marginallyuseful/homebrew-tap/releases/download/soll-0.0.1-25b00999/soll-linux-arm64"
      sha256 "18b518b9bc4f01cff83f035de8eae75835dead3030c5cf328dd3c86e89fd3b50"
    end
    if Hardware::CPU.intel?
      url "https://github.com/marginallyuseful/homebrew-tap/releases/download/soll-0.0.1-25b00999/soll-linux-x64"
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
