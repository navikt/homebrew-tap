class Cplt < Formula
  desc "macOS Seatbelt sandbox wrapper for GitHub Copilot CLI"
  homepage "https://github.com/navikt/cplt"
  version "2026.05.08-074242-0717f83"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.05.08-074242-0717f83/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "b0523c6d64b535077e7830ebae2902d96ce6621b57443aaface2623857f0579e"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.05.08-074242-0717f83/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "377905fbda1c2f345542a6e28e437399608bb2a6f6a28f38d10f7692d8472ad1"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
