class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.10.19-065548-1b4f9ee"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.19-065548-1b4f9ee/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "b0f8f9c9bcdc4634040dbfa48b5072a02aadbe9fb0e1b252562e29bbf26653e6"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.19-065548-1b4f9ee/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "a123c7df27e7dfeaf9227bbd8eac239d37efc9b1184542061b3d0d1a686ae5b2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.19-065548-1b4f9ee/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5c69ca1e4379c9bf32a2b1f89470f7026167dc168eb1fe6697dd19264ad178dd"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.19-065548-1b4f9ee/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f51b8906e01c25f2397cb1e57f09f7cdf5e36ae8f5168f4cfc6146120d4a5675"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
