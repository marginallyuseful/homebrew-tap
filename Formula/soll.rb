class Soll < Formula
  desc "Static import graph analyzer"
  homepage "https://github.com/marginallyuseful/soll"
  version "soll-0.0.1-9485938d"
  license :cannot_represent

  on_macos do
    url "https://github.com/marginallyuseful/homebrew-tap/releases/download/soll-0.0.1-9485938d/soll-macos-arm64"
    sha256 "4a9a129a8faf65544ae4af103950fbea71f2162546b6e939568f3d8052af3c02"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/marginallyuseful/homebrew-tap/releases/download/soll-0.0.1-9485938d/soll-linux-arm64"
      sha256 "de7572849640487a378992249da37e5b49574ed6d29222241165ef89900630c8"
    end
    if Hardware::CPU.intel?
      url "https://github.com/marginallyuseful/homebrew-tap/releases/download/soll-0.0.1-9485938d/soll-linux-x64"
      sha256 "3963eccd1a8b8426364213749d3ecaffafeda2391bcfd229b45efe5d83fb896c"
    end
  end

  def install
    bin.install Dir.glob("*").first => "soll"
  end

  test do
    system "#{bin}/soll", "--help"
  end
end
