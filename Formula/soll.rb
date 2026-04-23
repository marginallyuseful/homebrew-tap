class Soll < Formula
  desc "Static import graph analyzer"
  homepage "https://github.com/marginallyuseful/soll"
  version "soll-0.0.1-6bd7489d"
  license :cannot_represent

  on_macos do
    url "https://github.com/marginallyuseful/homebrew-tap/releases/download/soll-0.0.1-6bd7489d/soll-macos-arm64"
    sha256 "ddd83c7c4a7dd08641f4a2b0e98138dcde005e1cc46600c73c7ba8e9c434e22e"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/marginallyuseful/homebrew-tap/releases/download/soll-0.0.1-6bd7489d/soll-linux-arm64"
      sha256 "ba74f07dc4f10901c7dbeed900b4dc8113f65399479af4c5e4b68a798ddeb4bb"
    end
    if Hardware::CPU.intel?
      url "https://github.com/marginallyuseful/homebrew-tap/releases/download/soll-0.0.1-6bd7489d/soll-linux-x64"
      sha256 "9484cdf06e8c40921ebde78061f238fa46f754c46d052b9bed422a4dd9d7d61a"
    end
  end

  def install
    bin.install Dir.glob("*").first => "soll"
  end

  test do
    system "#{bin}/soll", "--help"
  end
end
