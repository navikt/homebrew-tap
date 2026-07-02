class Cplt < Formula
  desc "macOS Seatbelt sandbox wrapper for GitHub Copilot CLI"
  homepage "https://github.com/navikt/cplt"
  version "2026.07.02-132951-089b2ac"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.07.02-132951-089b2ac/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "1a5cfa9f3acd2871b395a8a77b86cf755fa7fe3ecc4ee6b14c125f9d1512baf2"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.07.02-132951-089b2ac/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "dabd2b703f6f70d050f36d949aa0ac0a273bcf13c1a9e2c827dfa3db066da4f8"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
