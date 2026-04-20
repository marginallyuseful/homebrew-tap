class Soll < Formula
  desc "Static import graph analyzer"
  homepage "https://github.com/marginallyuseful/soll"
  version "soll-0.0.1-8621c75c"
  license :cannot_represent

  on_macos do
    url "https://github.com/marginallyuseful/homebrew-tap/releases/download/soll-0.0.1-8621c75c/soll-macos-arm64"
    sha256 "5729d37367d211c0176e54235dae9d93d449173116910c2387447231e69cbb4f"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/marginallyuseful/homebrew-tap/releases/download/soll-0.0.1-8621c75c/soll-linux-arm64"
      sha256 "c2ee800de62d77e6daeea54a2fba249174f94019e8dbe7c88c45f085ebdf02b8"
    end
    if Hardware::CPU.intel?
      url "https://github.com/marginallyuseful/homebrew-tap/releases/download/soll-0.0.1-8621c75c/soll-linux-x64"
      sha256 "855a4b430a7dd8346d2277f83feb733bceee5d3e7906303e0d1ac87cbea731c5"
    end
  end

  def install
    bin.install Dir.glob("*").first => "soll"
  end

  test do
    system "#{bin}/soll", "--help"
  end
end
