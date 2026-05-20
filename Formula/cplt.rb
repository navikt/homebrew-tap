class Cplt < Formula
  desc "macOS Seatbelt sandbox wrapper for GitHub Copilot CLI"
  homepage "https://github.com/navikt/cplt"
  version "2026.05.20-150840-726f55d"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.05.20-150840-726f55d/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "a2ab4c1324a6803f3b263eb8136333587765bde40c3d4ca6ac03724e0c8dc7ae"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.05.20-150840-726f55d/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "6d151b3c481b27a015140af90902fe19bedd7f9a75ce987c8e9e61a2ea8e76d7"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
