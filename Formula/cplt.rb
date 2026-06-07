class Cplt < Formula
  desc "macOS Seatbelt sandbox wrapper for GitHub Copilot CLI"
  homepage "https://github.com/navikt/cplt"
  version "2026.06.07-084232-5ef5d67"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.06.07-084232-5ef5d67/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "763f8058d9653954faa3945d2e56fb4eb38c4e47013e88a72a0eac07241e12c3"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.06.07-084232-5ef5d67/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "2d4a7e6e02caef84451a125dc704fba49d663dd5532ece945ae21c0527e98286"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
