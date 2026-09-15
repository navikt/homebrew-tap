class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.09.15-113652-8eb1997"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.15-113652-8eb1997/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "38d5fe43dc6742b4aeb82011bbf99c908a1cfdad14df8a054ac99c37a0416f4f"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.15-113652-8eb1997/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "8e497256537c17dcb3cc56ad103f8524c2428f81692d5a1199a68bdf97ad244c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.15-113652-8eb1997/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "23c5b06a0020962555ff3573b69291b7aa51b11581d662bed9e3065b993b0dc2"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.15-113652-8eb1997/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "83e0a5095829787254ab79fc05fb9aecf9836bbe6dc4eea932354d6d96203144"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
