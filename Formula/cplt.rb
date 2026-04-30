class Cplt < Formula
  desc "macOS Seatbelt sandbox wrapper for GitHub Copilot CLI"
  homepage "https://github.com/navikt/cplt"
  version "2026.04.30-130904-61cec3b"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.04.30-130904-61cec3b/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "3ea1abccec684678be8b30f74e4cce145c63e1c80c2edb8ccc5262795075106c"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.04.30-130904-61cec3b/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "4c7688850a00983e1abdc160db08fb6ab7c003db52de9cdafba68936e84d9f0d"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
