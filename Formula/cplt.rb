class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.09.28-185454-a924b3d"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.28-185454-a924b3d/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "42ea686112595b96610dbd2425b81852b9b199922bf878816d3dc64e00019a6d"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.28-185454-a924b3d/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "aaaa71ff7cbd19be979b9ede3b999398279fb3bf50422d5ea258c348f4d7e1dd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.28-185454-a924b3d/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2d77866eafa25fe269b1086d56c5c5562f165971fe10c384b31c08fbfef3671a"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.28-185454-a924b3d/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3a8f4f0bc574094a635105e44af3957bcf74ea7295457f24d4c85cf9ded4ca18"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
