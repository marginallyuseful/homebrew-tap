class Soll < Formula
  desc "Static import graph analyzer"
  homepage "https://github.com/marginallyuseful/soll"
  version "soll-0.0.1-8ebbfd98"
  license :cannot_represent

  on_macos do
    url "https://github.com/marginallyuseful/homebrew-tap/releases/download/soll-0.0.1-8ebbfd98/soll-macos-arm64"
    sha256 "1f859c75983b7f3f9fafe33ac7e098f148297faaee97182c3aeb6671ae7570dd"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/marginallyuseful/homebrew-tap/releases/download/soll-0.0.1-8ebbfd98/soll-linux-arm64"
      sha256 "bb454ba4c46c846df2415bca116663126562931d3ccf993680c80ccb18fb5be8"
    end
    if Hardware::CPU.intel?
      url "https://github.com/marginallyuseful/homebrew-tap/releases/download/soll-0.0.1-8ebbfd98/soll-linux-x64"
      sha256 "88c53c280c6c5dd6a5ee7efd3cfdd3b69d35adb874366adeaeb78411a854c327"
    end
  end

  def install
    bin.install Dir.glob("*").first => "soll"
  end

  test do
    system "#{bin}/soll", "--help"
  end
end
