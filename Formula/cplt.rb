class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.10.24-180021-8b90da9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.24-180021-8b90da9/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "39433051bc14513d47d36d2476dfffa941988b1399ec3080f60164611ddffe2f"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.24-180021-8b90da9/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "73f1024cac9f35894c5a63ba27b941ef3eb1ad607bc229d032d808b78b8e7d23"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.24-180021-8b90da9/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0af4cd1b2b72103189e00c9fd2a66363d69983973b15ddc8fb837be89763e5e9"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.24-180021-8b90da9/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c7ab4024c927ab923ccd0538da483e3a8a3ad72c16d4acebfa6649f3cb196b4e"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
