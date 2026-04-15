class Soll < Formula
  desc "Static import graph analyzer"
  homepage "https://github.com/marginallyuseful/soll"
  version "soll-0.0.1-a179e869"
  license :cannot_represent

  on_macos do
    url "https://github.com/marginallyuseful/homebrew-tap/releases/download/soll-0.0.1-a179e869/soll-macos-arm64"
    sha256 "207a8b950a5d12683afd164571cf7941aab8fb62d07287fa1632cfcbdd51b1cc"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/marginallyuseful/homebrew-tap/releases/download/soll-0.0.1-a179e869/soll-linux-arm64"
      sha256 "39b2b82369ffbe8c263f06aeb5b4d05216a685c54c0a0b2a3918ee07808e41dc"
    end
    if Hardware::CPU.intel?
      url "https://github.com/marginallyuseful/homebrew-tap/releases/download/soll-0.0.1-a179e869/soll-linux-x64"
      sha256 "424d529e9d2bdd63ae372e41f10f617ebd97ec5a98644c68cad6d2342d17317a"
    end
  end

  def install
    bin.install Dir.glob("*").first => "soll"
  end

  test do
    system "#{bin}/soll", "--help"
  end
end
