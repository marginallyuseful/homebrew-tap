class Soll < Formula
  desc "Static import graph analyzer"
  homepage "https://github.com/marginallyuseful/soll"
  version "soll-0.0.1-1ecf3247"
  license :cannot_represent

  on_macos do
    url "https://github.com/marginallyuseful/homebrew-tap/releases/download/soll-0.0.1-1ecf3247/soll-macos-arm64"
    sha256 "46d8eebb359b0c657c058ed2ef98e092a4037c16815c712cf63f8174d90a1122"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/marginallyuseful/homebrew-tap/releases/download/soll-0.0.1-1ecf3247/soll-linux-arm64"
      sha256 "1a95120227de1d93e3165e06398477b1744accfe05a38c49b1a85f88304d83ab"
    end
    if Hardware::CPU.intel?
      url "https://github.com/marginallyuseful/homebrew-tap/releases/download/soll-0.0.1-1ecf3247/soll-linux-x64"
      sha256 "9c9977ce514b3e8823077167c92421ae6bbfa719530318843cbb7e4d10d00885"
    end
  end

  def install
    bin.install Dir.glob("*").first => "soll"
  end

  test do
    system "#{bin}/soll", "--help"
  end
end
