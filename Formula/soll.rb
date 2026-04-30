class Soll < Formula
  desc "Static import graph analyzer"
  homepage "https://github.com/marginallyuseful/soll"
  version "soll-0.0.1-550a1043"
  license :cannot_represent

  on_macos do
    url "https://github.com/marginallyuseful/homebrew-tap/releases/download/soll-0.0.1-550a1043/soll-macos-arm64"
    sha256 "b93b03aee28a0149d188c1f14c3ef38b21e7d1bf6c98f5d16739413d341f9f07"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/marginallyuseful/homebrew-tap/releases/download/soll-0.0.1-550a1043/soll-linux-arm64"
      sha256 "6f2d6e1b771fe8690672352821502e1f62e42175e4b2182d0a3d3a6f681c2b9a"
    end
    if Hardware::CPU.intel?
      url "https://github.com/marginallyuseful/homebrew-tap/releases/download/soll-0.0.1-550a1043/soll-linux-x64"
      sha256 "e9bd657b280293bfa9e8ab7f3d6a9ade926dcfe511ba82fdae1e275d86a82bf7"
    end
  end

  def install
    bin.install Dir.glob("*").first => "soll"
  end

  test do
    system "#{bin}/soll", "--help"
  end
end
