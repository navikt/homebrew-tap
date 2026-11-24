class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.11.24-020236-4ea5789"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.24-020236-4ea5789/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "d9b772a68fc39385e658ae2742c611bd111d2a04200a26c397859c138b4d6849"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.24-020236-4ea5789/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "952a55d158cbc0ab4a0d90957881fd80d5cf6c1fafb42a922c6e482b83ed6614"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.24-020236-4ea5789/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c79841546a44a97c3b421d3eaffb18101552c5566586e3de33ff69e4b308eaf9"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.24-020236-4ea5789/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "eb5cc28d1ce3af717ec0e1777d3a02741e771092389627ed9ffb26602d9682f9"
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
