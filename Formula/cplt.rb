class Cplt < Formula
  desc "macOS Seatbelt sandbox wrapper for GitHub Copilot CLI"
  homepage "https://github.com/navikt/cplt"
  version "2026.04.27-081029-1c8303f"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.04.27-081029-1c8303f/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "27f6a073227d7767c76ac066f472540563e77154aacf3d80ebfddde4f3f99ac6"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.04.27-081029-1c8303f/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "85a2a9cc7db47dd87bb76fa73204dd963dd5bcf693f62a4278a5668b9b1fc532"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
