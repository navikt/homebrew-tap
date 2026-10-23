class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.10.23-205530-6890bf4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.23-205530-6890bf4/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "a3f27a988e35bbf6d96b3216cf812123f300e4e27b0d4ee04d3dd350f3a5a691"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.23-205530-6890bf4/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "db7af80769618fff739d9ff4cb19324aac6f5622721f08e31d5a0739093c325b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.23-205530-6890bf4/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d6f685016c7039f0893d0a863d5983b2537358fa373d39f7a65cceff783336de"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.23-205530-6890bf4/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e749df928e60e200e849b3f64c5371748badfbb37661bf85ffe35a2e79a4e513"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
