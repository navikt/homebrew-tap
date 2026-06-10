class Cplt < Formula
  desc "macOS Seatbelt sandbox wrapper for GitHub Copilot CLI"
  homepage "https://github.com/navikt/cplt"
  version "2026.06.10-103727-6a8ea51"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.06.10-103727-6a8ea51/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "a752ff10a67808bd18d155bcf78765196ec3e0a9f904a9bb3bf1770d37147e39"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.06.10-103727-6a8ea51/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "55c5ac6ddda5de7e2640e892b8a997e12724536bd37f43b73a0b558a5d8a6e8f"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
