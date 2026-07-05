class Cplt < Formula
  desc "macOS Seatbelt sandbox wrapper for GitHub Copilot CLI"
  homepage "https://github.com/navikt/cplt"
  version "2026.07.05-141044-f697874"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.07.05-141044-f697874/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "abd0b0b09d3b315fa46662fec914f4312bfd8123a21be3c8bf84c3020b54fde4"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.07.05-141044-f697874/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "86e0e7099a264513185cdc3a734bf34fe80f7c93167cea65b7f16b760fa9f52d"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
