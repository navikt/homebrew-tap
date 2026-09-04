class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.09.04-182359-4aca591"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.04-182359-4aca591/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "917e0901016ec8ec14f47750f8f6b2f90fd78a8f9350cd05780079342cf462f2"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.04-182359-4aca591/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "bfdb46896e3d1ad8cc06f45a4b2794e88c62276272263d791e422f87f225914a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.04-182359-4aca591/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "11896de285dcf0b14b3e37fab9f04b835fb420afc8f13aec81e04a3c56564691"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.04-182359-4aca591/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8329869fef64919afd68a8f0fa9990b08f092f96a24748f91b25de3f2b1b17b9"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
