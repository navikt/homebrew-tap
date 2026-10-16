class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.10.16-142209-d1989e3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.16-142209-d1989e3/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "e89c5f6cd51b72db0247a76e1daad93464642fd03cd906d9de28dce640e805f0"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.16-142209-d1989e3/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "3f5eb28d08f0c29fc3306abf93f89b96fbd4ca90bc59016f589e59d1bd3bfa7b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.16-142209-d1989e3/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7b8f0ec17544827409a2e99a584d9ad2f6934c8b9ae3d776f2d32e0334c4364c"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.16-142209-d1989e3/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f37fb0c356783c9fa754c271a4594344a627ab04f65d7a657752093b24ba3e78"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
