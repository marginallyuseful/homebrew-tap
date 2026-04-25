class Soll < Formula
  desc "Static import graph analyzer"
  homepage "https://github.com/marginallyuseful/soll"
  version "soll-0.0.1-d92db4ef"
  license :cannot_represent

  on_macos do
    url "https://github.com/marginallyuseful/homebrew-tap/releases/download/soll-0.0.1-d92db4ef/soll-macos-arm64"
    sha256 "995eae321166bcdce1a4240f40ef8fe30010fc52b00f1fcaea2ccf26d9228b77"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/marginallyuseful/homebrew-tap/releases/download/soll-0.0.1-d92db4ef/soll-linux-arm64"
      sha256 "243117df0ecd0d36ab114d7146cc49811fbc2ad1ad0b9629ac01eda859eb2e29"
    end
    if Hardware::CPU.intel?
      url "https://github.com/marginallyuseful/homebrew-tap/releases/download/soll-0.0.1-d92db4ef/soll-linux-x64"
      sha256 "1deeeede00eb6a014250ff92713d26f5e70c691af4b7a5cb1ce1d2aca912a8c0"
    end
  end

  def install
    bin.install Dir.glob("*").first => "soll"
  end

  test do
    system "#{bin}/soll", "--help"
  end
end
