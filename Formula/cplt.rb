class Cplt < Formula
  desc "macOS Seatbelt sandbox wrapper for GitHub Copilot CLI"
  homepage "https://github.com/navikt/cplt"
  version "2026.04.14-125212-51850c8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.04.14-125212-51850c8/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "b0b93dc6824ab52a1d8f6b4aa331e461bfeac0b4371f3a29a3e10db8e8e2ea6d"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.04.14-125212-51850c8/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "e7e18af330f66f91e1e65d2e4efe76e0a28ebb4842f779bcaf4ff8a9dbedb991"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
