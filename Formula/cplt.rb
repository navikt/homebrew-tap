class Cplt < Formula
  desc "macOS Seatbelt sandbox wrapper for GitHub Copilot CLI"
  homepage "https://github.com/navikt/cplt"
  version "2026.04.11-808ee9b"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.04.11-808ee9b/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "6bf77b31d3b24b0539d50c63dd3438717f09508808a485b55e4646e852ba55a4"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.04.11-808ee9b/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "4f337f4214d60257f6560cfe029f5fb9c868d37b1bfe6b55c5a28caeb2d9cf10"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
