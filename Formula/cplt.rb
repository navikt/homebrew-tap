class Cplt < Formula
  desc "macOS Seatbelt sandbox wrapper for GitHub Copilot CLI"
  homepage "https://github.com/navikt/cplt"
  version "2026.04.23-191758-68807fa"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.04.23-191758-68807fa/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "306ca845616efa66910c7a86567a882ff689873b6cbd0e582e6d3343d1e9de6a"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.04.23-191758-68807fa/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "d60c26007401a2fc6cb54753ae86dc74b249b09a7ba15e8f974f0b3d9d5180c9"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
