class Cplt < Formula
  desc "macOS Seatbelt sandbox wrapper for GitHub Copilot CLI"
  homepage "https://github.com/navikt/cplt"
  version "2026.05.07-084459-d6e4606"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.05.07-084459-d6e4606/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "990d71c82e02e18cf7ca94dbccfbd34779af1e8055179fa463df63191cb0ae4e"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.05.07-084459-d6e4606/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "87ef417c1b4509828bb9daebac1b95591c2f6e04d210ca2f0c0841d0e55d271a"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
