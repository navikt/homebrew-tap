class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.09.08-205249-a9be29b"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.08-205249-a9be29b/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "d4427dd36e0e3397136f4622feb9d69ad2e778bb7530cc21587495eb2bd3eabb"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.08-205249-a9be29b/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "fcc5a79198b6898b627f13d299ed6b458a71f0d2ae4f839d7ed95a3fd6d8096c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.08-205249-a9be29b/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "11c6be4aeca5180e249f81e95212dc798da928201ebec95729a6df679f71b709"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.08-205249-a9be29b/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "594fa16a123d5c053f9c5e8dd19eff9a2d9af3949876936309f6faaabf33b53e"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
