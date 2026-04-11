class Cplt < Formula
  desc "macOS Seatbelt sandbox wrapper for GitHub Copilot CLI"
  homepage "https://github.com/navikt/cplt"
  version "2026.04.11-48aedfc"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.04.11-48aedfc/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "0296bd412e8d8846efe8038329d3e2f920305567a7e9133621b2df64e6ae1c0f"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.04.11-48aedfc/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "cac331866d73135f518c8f5359c826b827bae41e0db342955ddc296e19454827"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
