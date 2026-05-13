class Cplt < Formula
  desc "macOS Seatbelt sandbox wrapper for GitHub Copilot CLI"
  homepage "https://github.com/navikt/cplt"
  version "2026.05.13-084029-0b6858e"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.05.13-084029-0b6858e/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "129b63dc16f8f9f53f1801b85d8c84cb6d96ce6aa2fb10c76477d1f71eb31f0f"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.05.13-084029-0b6858e/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "9421e3250ae839c8d25437671ec8065b3d5faf37bb90fe62d184bff9df825188"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
