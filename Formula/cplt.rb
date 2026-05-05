class Cplt < Formula
  desc "macOS Seatbelt sandbox wrapper for GitHub Copilot CLI"
  homepage "https://github.com/navikt/cplt"
  version "2026.05.05-131538-6da3b36"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.05.05-131538-6da3b36/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "e4ca764597f27e90cb4fa1ca6617de3908a3c379cf202604d6c88ef76c277115"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.05.05-131538-6da3b36/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "fc8a40738f03d3b0c5c96305a0759c7e11b0a1cd684f4c050371f03fef54a125"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
