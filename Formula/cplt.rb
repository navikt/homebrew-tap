class Cplt < Formula
  desc "macOS Seatbelt sandbox wrapper for GitHub Copilot CLI"
  homepage "https://github.com/navikt/cplt"
  version "2026.05.08-173820-f6969ab"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.05.08-173820-f6969ab/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "9d2a681867da58359e92a5ad92f55631ee094b49c7b315b381b01d4d25b2d734"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.05.08-173820-f6969ab/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "55ae2646d9a92039db73c5ddbe5981e2364ceb8f6f1ea527f573d78cd4aa150d"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
