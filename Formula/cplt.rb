class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.11.23-220119-e3ce501"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.23-220119-e3ce501/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "f745461397a2a8b47687e16f64e6b1701bb47db3f0f0348885512069d2284ef0"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.23-220119-e3ce501/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "ac8f5aaa7c46d41126e24578e4daa03b7705016abc76f201a744883ad36a8758"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.23-220119-e3ce501/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0da3c674fc0900cf08f34d99db0b2fed1fd52dd113c83b31809517721a02d5f5"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.23-220119-e3ce501/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ea3780d1ceda49e464e3f8a54701feb5e0379727ef03ea8d4469ce31bde255db"
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
