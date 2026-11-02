class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.11.02-085416-a492a08"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.02-085416-a492a08/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "4f196c86371f72878a45e120ab2f22ffb75a76c4796731d72e4fa7d5e628293b"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.02-085416-a492a08/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "f330aebc9a4f02b75421ba9da05d3155fa21ea23b53f776670e9a63e6f6de932"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.02-085416-a492a08/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "eaddd51172dc9ed0b84ad04e5723a83a47f1b19af77f06f2c8db0a6099ccd3cd"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.02-085416-a492a08/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "754a44ac37279e088020518544373b07d42fbeae05156439df27d2cf7e002b22"
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
