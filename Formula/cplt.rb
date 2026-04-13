class Cplt < Formula
  desc "macOS Seatbelt sandbox wrapper for GitHub Copilot CLI"
  homepage "https://github.com/navikt/cplt"
  version "2026.04.13.17.40.22-fcc2412"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.04.13.17.40.22-fcc2412/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "9c8f5c032de4030ceee4068fade7fcb90d691db1f73ffe6fcff13f0143b1cbd3"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.04.13.17.40.22-fcc2412/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "e6209731a7e6d3ba9d2c663ed4dd3357fd9c88a3c5c0fe89bf91be96d59e507b"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
