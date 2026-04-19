class Soll < Formula
  desc "Static import graph analyzer"
  homepage "https://github.com/marginallyuseful/soll"
  version "soll-0.0.1-a9373a31"
  license :cannot_represent

  on_macos do
    url "https://github.com/marginallyuseful/homebrew-tap/releases/download/soll-0.0.1-a9373a31/soll-macos-arm64"
    sha256 "a0e93232514ea2b0bcf94cf96bab0e71fe0a2bb1b1c351974fab2a4431d67e0b"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/marginallyuseful/homebrew-tap/releases/download/soll-0.0.1-a9373a31/soll-linux-arm64"
      sha256 "f43db23c410bc4b37ff035270f640a50335eccf26cdc24639020ae1e4f5fc355"
    end
    if Hardware::CPU.intel?
      url "https://github.com/marginallyuseful/homebrew-tap/releases/download/soll-0.0.1-a9373a31/soll-linux-x64"
      sha256 "b3fd045123e7cdc168600c39cb13a880752712ae3b91d8774dfdd37fb79c45bc"
    end
  end

  def install
    bin.install Dir.glob("*").first => "soll"
  end

  test do
    system "#{bin}/soll", "--help"
  end
end
