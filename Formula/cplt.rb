class Cplt < Formula
  desc "macOS Seatbelt sandbox wrapper for GitHub Copilot CLI"
  homepage "https://github.com/navikt/cplt"
  version "2026.05.20-184913-3826a1d"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.05.20-184913-3826a1d/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "cc5ca16f261e94e3552922ae405685ef5e38662899057b819a24f90b475219f1"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.05.20-184913-3826a1d/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "e5b49eef184209a4797af76237a47e8ece1e58c33b21e9c9b1979c567643c733"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
