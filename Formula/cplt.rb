class Cplt < Formula
  desc "macOS Seatbelt sandbox wrapper for GitHub Copilot CLI"
  homepage "https://github.com/navikt/cplt"
  version "2026.05.11-091955-18c988a"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.05.11-091955-18c988a/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "4f4b95192c8ddea0cb327a8e08a3d3d6130ffd72477981c868d5453c47a88451"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.05.11-091955-18c988a/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "bf85f3f4aaf5b75721b5aedf3659a54edfb2c34888d7f20874bb4c6060ed7ff3"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
