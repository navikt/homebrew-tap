class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.11.05-125034-2ff5d40"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.05-125034-2ff5d40/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "d130f6a46fc7d90f403aa7038d934a21a7ade36895d0f04b11e4b57dfc935776"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.05-125034-2ff5d40/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "2f0ba82ab99837a92fe87048bf0d032124674c5b3ba102bf15692267d760ea18"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.05-125034-2ff5d40/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6161bbe893c50df8fc76a2bb12876eb6062cc9279640f1ef6330d0fa4e540dd4"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.05-125034-2ff5d40/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "615abf9560d20a89ff4110de7f9d01a8c44de80648f9591b4e3cd737dcdf2d4a"
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
