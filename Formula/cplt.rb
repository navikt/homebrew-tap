class Cplt < Formula
  desc "macOS Seatbelt sandbox wrapper for GitHub Copilot CLI"
  homepage "https://github.com/navikt/cplt"
  version "2026.04.30-082830-066ab71"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.04.30-082830-066ab71/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "cd7e7c0a747b6e90aa0a93f8cafcdec057b9a7997e26a30e8ec26261b33e3b00"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.04.30-082830-066ab71/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "f41f0af7a5e00f75350e32f51da96319d1a1aa023fe8f51b3c680e35d827ff67"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
