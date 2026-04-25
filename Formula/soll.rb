class Soll < Formula
  desc "Static import graph analyzer"
  homepage "https://github.com/marginallyuseful/soll"
  version "soll-0.0.1-b4a41182"
  license :cannot_represent

  on_macos do
    url "https://github.com/marginallyuseful/homebrew-tap/releases/download/soll-0.0.1-b4a41182/soll-macos-arm64"
    sha256 "5ca5967fcb8649b3ae2818cdf3991b8141bc99fdfc4511814471756d82c3cf6d"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/marginallyuseful/homebrew-tap/releases/download/soll-0.0.1-b4a41182/soll-linux-arm64"
      sha256 "0f2e2133bc21244f21a5bc7a118d02fbc51be7296e4201387187dc3bd75fd310"
    end
    if Hardware::CPU.intel?
      url "https://github.com/marginallyuseful/homebrew-tap/releases/download/soll-0.0.1-b4a41182/soll-linux-x64"
      sha256 "c62d99d15c3b42d9167c6a1029b4ab1cfa9707880c94fce52de2df1ec44a8f0a"
    end
  end

  def install
    bin.install Dir.glob("*").first => "soll"
  end

  test do
    system "#{bin}/soll", "--help"
  end
end
