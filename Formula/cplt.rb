class Cplt < Formula
  desc "macOS Seatbelt sandbox wrapper for GitHub Copilot CLI"
  homepage "https://github.com/navikt/cplt"
  version "2026.05.05-071314-1005406"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.05.05-071314-1005406/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "5446051ce8238aa4869669b8bdb512e8d1438a6bf561b3c813938600b52abd75"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.05.05-071314-1005406/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "3a6265d322b038e9a5ccbef46bbc5825e7d9c199f829e7f249704005143c23bb"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
