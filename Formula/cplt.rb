class Cplt < Formula
  desc "macOS Seatbelt sandbox wrapper for GitHub Copilot CLI"
  homepage "https://github.com/navikt/cplt"
  version "2026.04.10-0a13e20"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.04.10-0a13e20/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "74f99432f673f28612ae23dc2490b4b242e454607e9806198701593d3edcbd20"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.04.10-0a13e20/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "4cd2e6fc407c22b60703d6f1ac244b60beffb5ae26a03e2ce01a1414b7e83212"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
