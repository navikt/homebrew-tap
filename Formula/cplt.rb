class Cplt < Formula
  desc "macOS Seatbelt sandbox wrapper for GitHub Copilot CLI"
  homepage "https://github.com/navikt/cplt"
  version "2026.04.23-085512-0694298"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.04.23-085512-0694298/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "849092ff992d33e49fd5a7da8d3dc3f50f4a09bb9ec3d6f6573e303ea3213d11"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.04.23-085512-0694298/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "e17a75eac50ace40d035ab86e655728f1a22885aaadcb3f58b1e72d552e51983"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
