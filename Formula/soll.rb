class Soll < Formula
  desc "Static import graph analyzer"
  homepage "https://github.com/marginallyuseful/soll"
  version "soll-0.0.1-f2d02297"
  license :cannot_represent

  on_macos do
    url "https://github.com/marginallyuseful/homebrew-tap/releases/download/soll-0.0.1-f2d02297/soll-macos-arm64"
    sha256 "b6a1021281e918b67b8d111b982c00c4ea0c7c44f91d7679703f3136a84aa152"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/marginallyuseful/homebrew-tap/releases/download/soll-0.0.1-f2d02297/soll-linux-arm64"
      sha256 "443f53eb9d1f2761bc5ba8e8304578b59748db621cc6dec6d37805884e0a839d"
    end
    if Hardware::CPU.intel?
      url "https://github.com/marginallyuseful/homebrew-tap/releases/download/soll-0.0.1-f2d02297/soll-linux-x64"
      sha256 "74c8a69f047fbdfdb1df812dc652a42d38316691663dc602b52099aa6001047c"
    end
  end

  def install
    bin.install Dir.glob("*").first => "soll"
  end

  test do
    system "#{bin}/soll", "--help"
  end
end
