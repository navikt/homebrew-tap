class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.11.25-091901-67905b9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.25-091901-67905b9/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "4d2287b07e51e648ec073cb7d12c7af16395f64661e32aafc7549dc7c8b4f1d1"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.25-091901-67905b9/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "16d117fecfff771883e90d28482320fd0cca8776ed772adb4c55ad51e8e604ad"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.25-091901-67905b9/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5894d94ab10fec107cef15cdf1bca6c7eb69eb21bf9f6902b15fa7f9f4164919"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.25-091901-67905b9/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4ea36d80c979f37556dc775f030cea725a42d65b7217c53d1799ed2f0446e4c1"
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
