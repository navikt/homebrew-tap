class Cplt < Formula
  desc "macOS Seatbelt sandbox wrapper for GitHub Copilot CLI"
  homepage "https://github.com/navikt/cplt"
  version "2026.05.27-185821-d7a80c2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.05.27-185821-d7a80c2/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "6b1a6f9128d3476e039d84f85778229e0bcde1fd9447ee46c9c3ed9b5cdf9863"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.05.27-185821-d7a80c2/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "e3dea83b7c8e1685b4c6fd91d5007f018996e698e14ac98e3748abfd5535ed53"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
