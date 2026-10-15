class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.10.15-115628-361cb26"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.15-115628-361cb26/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "c7dbbc0a49397b6105e1c262f3aa4a2774c30d7fcd86c231fb992310e8c1e614"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.15-115628-361cb26/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "d9b925397ab91b860dc1899ff2b602f916ab6905a3e5d627db3784f76d19c179"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.15-115628-361cb26/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "981052b920964695a95a6a86f48ecfd7df0e6fd39866e77123b9ae2928976a56"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.15-115628-361cb26/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b1928b6200d6c0aa638b3994c7f089c11970f71b3c75a80dfd0608fbbd37b354"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
