class Soll < Formula
  desc "Static import graph analyzer"
  homepage "https://github.com/marginallyuseful/soll"
  version "soll-0.0.1-8a75e8e6"
  license :cannot_represent

  on_macos do
    url "https://github.com/marginallyuseful/homebrew-tap/releases/download/soll-0.0.1-8a75e8e6/soll-macos-arm64"
    sha256 "659896901b5f59232cb860e4a1bb34455382ae14a553f6c704ab7bf4aa15f99a"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/marginallyuseful/homebrew-tap/releases/download/soll-0.0.1-8a75e8e6/soll-linux-arm64"
      sha256 "c582fb4fb3bb56a763fd73b91c682a5124d9cf2ad0d85528b0b2baa3d52f0c67"
    end
    if Hardware::CPU.intel?
      url "https://github.com/marginallyuseful/homebrew-tap/releases/download/soll-0.0.1-8a75e8e6/soll-linux-x64"
      sha256 "8ab4e42ace8397e66676d39b7b10ba9d94d32827117f6e6402e49c29142e8d8e"
    end
  end

  def install
    bin.install Dir.glob("*").first => "soll"
  end

  test do
    system "#{bin}/soll", "--help"
  end
end
