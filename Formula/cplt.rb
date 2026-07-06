class Cplt < Formula
  desc "macOS Seatbelt sandbox wrapper for GitHub Copilot CLI"
  homepage "https://github.com/navikt/cplt"
  version "2026.07.06-205021-a26d737"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.07.06-205021-a26d737/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "e1115fbb182c96254ac651933b17ddec19f5a6dc5aa49077d370ed0f9f334c75"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.07.06-205021-a26d737/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "1bd668a1dd0b0d9619fd9495221d895cc5138366eb18435b3d780b507623c29f"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
