class Cplt < Formula
  desc "macOS Seatbelt sandbox wrapper for GitHub Copilot CLI"
  homepage "https://github.com/navikt/cplt"
  version "2026.04.30-104802-7dc54aa"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.04.30-104802-7dc54aa/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "e12d3c7d3aee55a29cf5a7aff19f8b0ffab0273f40c5e765c26a7ed5ad43d71d"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.04.30-104802-7dc54aa/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "5a387d4bdbb23b67b5b833f968dbf822d3532c721daa3cbe52e2b0c3c484022e"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
