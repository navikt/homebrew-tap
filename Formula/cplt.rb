class Cplt < Formula
  desc "macOS Seatbelt sandbox wrapper for GitHub Copilot CLI"
  homepage "https://github.com/navikt/cplt"
  version "2026.05.13-131346-a154486"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.05.13-131346-a154486/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "c9a3bbdaaf9c35e3f0c23e6e8d1045740f7794ae098a69e1bf886eaed694a148"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.05.13-131346-a154486/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "87b7f8fe2bff7743e63c8d2626654004ec7bf4c0b6c5075f6bf1755a3aee9c93"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
