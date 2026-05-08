class Soll < Formula
  desc "Static import graph analyzer"
  homepage "https://github.com/marginallyuseful/soll"
  version "soll-0.0.1-2095ee31"
  license :cannot_represent

  on_macos do
    url "https://github.com/marginallyuseful/homebrew-tap/releases/download/soll-0.0.1-2095ee31/soll-macos-arm64"
    sha256 "6a3131ba8d600804bf52f6b696e915b05bafe45e3c9cf3cfff7284cbfa06a70a"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/marginallyuseful/homebrew-tap/releases/download/soll-0.0.1-2095ee31/soll-linux-arm64"
      sha256 "a90b435ad73e6728199e8f7004deb71119ee3d193693d6a36ddaf9f761ea041f"
    end
    if Hardware::CPU.intel?
      url "https://github.com/marginallyuseful/homebrew-tap/releases/download/soll-0.0.1-2095ee31/soll-linux-x64"
      sha256 "2ae5c03aefa6f0c504b0b8c349316bb8ec208bbd059b5885aae998fed79347c8"
    end
  end

  def install
    bin.install Dir.glob("*").first => "soll"
  end

  test do
    system "#{bin}/soll", "--help"
  end
end
