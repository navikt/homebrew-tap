class Cplt < Formula
  desc "macOS Seatbelt sandbox wrapper for GitHub Copilot CLI"
  homepage "https://github.com/navikt/cplt"
  version "2026.04.13-fec50f1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.04.13-fec50f1/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "a4585c66af9b05715d37899bf8ddcb00294034fde12a03053076af6db464b7ed"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.04.13-fec50f1/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "3a48ac4e75b8957eef91defc2c5f02908fe24cb85c4918b0117306b371daaf63"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
