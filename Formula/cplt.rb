class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.11.26-120452-4a89d44"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.26-120452-4a89d44/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "3b1340476b601f3150a856c28c92df1cca78acbd2dd584bed4a2ac0c036bf91c"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.26-120452-4a89d44/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "ec0024b6634736fedfaef08517911f1b0203d891478b5ae3c116ea1d274ca10e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.26-120452-4a89d44/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "92806b58fb19b9a5e3b722a3dbfacaccb1bf2d426fdbeba05d0c6462cde182b3"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.26-120452-4a89d44/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0965dbc3a503893c49e60856e4913067ba39e8b64b25b24a33f6c57d4a3207bd"
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
