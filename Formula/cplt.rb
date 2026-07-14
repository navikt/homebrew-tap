class Cplt < Formula
  desc "macOS Seatbelt sandbox wrapper for GitHub Copilot CLI"
  homepage "https://github.com/navikt/cplt"
  version "2026.07.14-084701-5cac7d9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.07.14-084701-5cac7d9/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "9120f00c972225fb489cb5cc0338c10b365da0d3299082e5c90fda289d938c05"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.07.14-084701-5cac7d9/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "322d8c8259da7cac55c0237f9249bb6442fd70ebae6135c002471fd2ce3207a4"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
