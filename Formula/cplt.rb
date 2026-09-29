class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.09.29-095137-e745d3a"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.29-095137-e745d3a/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "ce698e700787f25f560cf40d68996aee8d5d793bc42edb3cd366ec31b285d270"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.29-095137-e745d3a/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "a27e00c2378f3d15e27696da513a6bbc05773986cbd2b4534dcb43b3a03239ba"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.29-095137-e745d3a/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "76611e5e488560060cfafcfbbb64c2240205688b0b215ee61c404fd51d6cd1f8"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.29-095137-e745d3a/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "257797f1d2fca3924049099bd252caee3e8fcb797a4e08444ca69c028cf8384e"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
