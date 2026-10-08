class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.10.08-214630-b565fc0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.08-214630-b565fc0/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "0b1e6081a2aa3bba6ff5b3d83e905ce62274d1f233b8b30918e64b162a55d3de"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.08-214630-b565fc0/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "963cc66f4e4dbdbeb35c6d0ec2c22de5b4a33140391abce61f4beeb5b260833f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.08-214630-b565fc0/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0f9652d4a02c83a7facbc10cdadd8f01296db71686252b227e743936400ff8f1"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.08-214630-b565fc0/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3713b95de51099a919ec73bdd0a3d1d27252b3159daeef50fd1af90f833bc88c"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
