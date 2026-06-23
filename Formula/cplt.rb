class Cplt < Formula
  desc "macOS Seatbelt sandbox wrapper for GitHub Copilot CLI"
  homepage "https://github.com/navikt/cplt"
  version "2026.06.23-071504-5877284"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.06.23-071504-5877284/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "082f5e46672548032a3b207d18bfd4660a006486d8d82eb9427b24c37ffc7769"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.06.23-071504-5877284/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "c6531112b5212e18389217cb0f83db96c992035560c77598bae2bd8a76c34571"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
