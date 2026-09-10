class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.09.10-095758-d899fa4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.10-095758-d899fa4/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "f13f6a68430e412a323173293ceb744f01642cadd105a730703453acd67479a3"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.10-095758-d899fa4/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "539e7ae6e0b0bee365cf66a5a028c056394359413a3ead3714d95e5db540b381"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.10-095758-d899fa4/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c87c03ad1a39686d8494b0c94ce0caccecc988082f73f076d6306df68bd292bb"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.10-095758-d899fa4/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b9462dbdd8adde20659ba49c797128e8d020c76ac7df54a665574daaaf8a6c80"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
