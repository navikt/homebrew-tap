class Cplt < Formula
  desc "macOS Seatbelt sandbox wrapper for GitHub Copilot CLI"
  homepage "https://github.com/navikt/cplt"
  version "2026.06.10-114900-7530291"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.06.10-114900-7530291/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "5875c1083eb05d1269e625cff39061d9ed101420ad7d8885450be40b49f639e3"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.06.10-114900-7530291/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "c40073050c64e323fa2f5a45eab005adac751b58bc6ba5404152c7b735c0e5f3"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
