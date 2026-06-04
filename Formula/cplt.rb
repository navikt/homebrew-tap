class Cplt < Formula
  desc "macOS Seatbelt sandbox wrapper for GitHub Copilot CLI"
  homepage "https://github.com/navikt/cplt"
  version "2026.06.04-083540-3299baa"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.06.04-083540-3299baa/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "d48621552a6366d31e16ae1693a6e1c8f473e26e09df65fbaa952a129c8a7a16"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.06.04-083540-3299baa/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "cb97c5288bb29cc1d0f9c3b9cdd5ce5acd0825f5f2858bf9bb02ba1f0600ba8d"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
