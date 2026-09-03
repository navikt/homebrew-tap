class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.09.03-180951-2a1f2d7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.03-180951-2a1f2d7/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "ca59909a60b5294d4f4b1767ea9ef894afeb88562360ef966468239954b08f6b"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.03-180951-2a1f2d7/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "3473c190e058c2ffaee2f51f26b5d508f5ea63e215f05a76acc14aa909c77940"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.03-180951-2a1f2d7/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7f80fc692cadaebdb23026666c811407d29c96a97853998340b1edd228752a22"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.03-180951-2a1f2d7/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "295c799295b3eca2eaab1e8028daf90b266d889bb01bc320b84f0bda0ebef076"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
