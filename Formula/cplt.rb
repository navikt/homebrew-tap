class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.11.26-092835-e336621"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.26-092835-e336621/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "8b5d743732aca643bc5d4a71482e5db97583bf228459ee0762b83f85d9d9ae9f"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.26-092835-e336621/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "5e1fe1794f85cffb5dd8e4a6053dbd5615eaafea614d6ec9cb329cfdb1c9fd18"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.26-092835-e336621/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "42857920bfe25a68547320feda595caad1b410b114ce063f84fdc653ea912b1d"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.26-092835-e336621/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "978e82f68be62546040fd6240c98da6f2bab21519d8c39e28bd24bed68f31373"
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
