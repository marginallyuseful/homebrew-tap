class Soll < Formula
  desc "Static import graph analyzer"
  homepage "https://github.com/marginallyuseful/soll"
  version "soll-0.0.1-3eff4207"
  license :cannot_represent

  on_macos do
    url "https://github.com/marginallyuseful/homebrew-tap/releases/download/soll-0.0.1-3eff4207/soll-macos-arm64"
    sha256 "ecbef193fed5f100ea098885c9ccbc261a5bd0a4b2d4abeed40dee31f51a57b2"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/marginallyuseful/homebrew-tap/releases/download/soll-0.0.1-3eff4207/soll-linux-arm64"
      sha256 "83eb33acad8f0b69094e168e4151020876ef862a0654b44448f26878250d874e"
    end
    if Hardware::CPU.intel?
      url "https://github.com/marginallyuseful/homebrew-tap/releases/download/soll-0.0.1-3eff4207/soll-linux-x64"
      sha256 "1ed06e7e3f584ab4b2be07db8ada1fa9c30a54266e1d5034ab12adb50deaea46"
    end
  end

  def install
    bin.install Dir.glob("*").first => "soll"
  end

  test do
    system "#{bin}/soll", "--help"
  end
end
