class Cplt < Formula
  desc "macOS Seatbelt sandbox wrapper for GitHub Copilot CLI"
  homepage "https://github.com/navikt/cplt"
  version "2026.05.08-102351-39e2a11"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.05.08-102351-39e2a11/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "b13b329fe9387f47b8f3fceec1a48805089fc89cc6eb4b25844efb0eb70c5f0e"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.05.08-102351-39e2a11/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "fee7ff3f00627218d3cc495960f187562a438e985373cec829f0b573720cb127"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
