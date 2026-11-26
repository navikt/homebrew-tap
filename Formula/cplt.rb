class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.11.26-094328-96815ec"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.26-094328-96815ec/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "d1e36790c38fdcad1be11f3f519030d15767739d6aa04826cdae45c3d2b33b75"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.26-094328-96815ec/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "767ade8bc661843644ab6e24500aa0e076b9f61ff69150c9ae9f8ee42df21921"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.26-094328-96815ec/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3992cb391ef6a7e07248ee541bbceadde89e27c2bf573a8a475ad0abdee58f0c"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.26-094328-96815ec/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9244c7f7a3d04dfee713172c7221afae5a975693942e6397c2a1a6a440e8942b"
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
