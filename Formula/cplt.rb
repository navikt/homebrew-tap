class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.11.04-080952-b011c1d"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.04-080952-b011c1d/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "4132cdeb76f99bbe82c7a6ead7a5c5940805a988ebdd514ef0d9c07a2d8b7a0a"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.04-080952-b011c1d/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "071bdeb4c6954d13bb463c2a1f06b17681cfdb2f6617c2e57b6ccf457b92f0c4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.04-080952-b011c1d/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "eb9ec197377c4073f9a31bc4d655902f677c9ec598d6acd7e4543fd683fcfc5b"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.04-080952-b011c1d/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d64cc8bedc2ba9f52714093602d49c2cb6892d295803d1117a3a11199d731c67"
    end
  end

  def install
    bin.install "cplt"
  end

  def caveats
    <<~EOS
      No cplt config yet? Run this to get the recommended defaults:
        cplt config init
    EOS
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
