class Cplt < Formula
  desc "macOS Seatbelt sandbox wrapper for GitHub Copilot CLI"
  homepage "https://github.com/navikt/cplt"
  version "2026.05.20-121138-ddf1a83"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.05.20-121138-ddf1a83/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "3e03fa1995d7febdee2e3f2055ad5bc93f54194a712135f6883b694aa6e6d150"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.05.20-121138-ddf1a83/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "22c10a2bc5c4ce1ac304c4c00e5c5581d2a647c50f9901359f5008baa21fcfef"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
