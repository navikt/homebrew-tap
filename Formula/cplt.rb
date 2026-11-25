class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.11.25-221729-35fd302"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.25-221729-35fd302/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "0d2d855e83c92dc49e4f1fa2bdbc8159dff16fd41eed51cbff3fe6b9b542b91c"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.25-221729-35fd302/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "b44ae7b7366107b937ca11a326b1090d0d3162cfbcfe64c52c0f017984f8fe2c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.25-221729-35fd302/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b6bc4bd0992e3996c9ebac51030022b81d457f3d122c03329966589bbcac68b7"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.25-221729-35fd302/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e9f9fc1d1429c65fd1f7c3e720577abf9cf6baa5895356a57af78cfdaa3450c8"
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
