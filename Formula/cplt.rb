class Cplt < Formula
  desc "macOS Seatbelt sandbox wrapper for GitHub Copilot CLI"
  homepage "https://github.com/navikt/cplt"
  version "2026.06.15-121314-ce82348"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.06.15-121314-ce82348/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "1b8462b8d3033490f2a15071f9653d157e73bf6ca4e36f9760fbd783687dce1c"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.06.15-121314-ce82348/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "9eff58933e81f41f677629d498764555fbeb87a374261b2902b8783a7369cfcd"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
