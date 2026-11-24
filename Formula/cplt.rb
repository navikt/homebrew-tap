class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.11.24-220640-fbd758e"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.24-220640-fbd758e/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "ac9f037df3fed62102a2e0ef29dfef0c907f4e74e7c118b59ee5a377cc9391b3"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.24-220640-fbd758e/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "94b3a4ee661d23f39d9774396c43c9145020a20847bddf5006bdddb15d0ba2c3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.24-220640-fbd758e/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "eda2be373d9148039131d8f21c8dd2ce234331300d6f7427a301193e0e57dd21"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.24-220640-fbd758e/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5e0bd0683563546cfbb27613833b6d0e5e659cb46392093ea3b00f5dcfe8c0e0"
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
