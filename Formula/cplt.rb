class Cplt < Formula
  desc "macOS Seatbelt sandbox wrapper for GitHub Copilot CLI"
  homepage "https://github.com/navikt/cplt"
  version "2026.07.03-215449-cee9b92"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.07.03-215449-cee9b92/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "e41409ede105b756b60df9eacb2f2a26287da7c4c309a0ea293b94252a633bc5"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.07.03-215449-cee9b92/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "ea0c886cd460bc804fed90c7bc2d69e99c2c7e3632640f79b7669e66f983432c"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
