class Cplt < Formula
  desc "macOS Seatbelt sandbox wrapper for GitHub Copilot CLI"
  homepage "https://github.com/navikt/cplt"
  version "2026.06.01-162624-8df981b"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.06.01-162624-8df981b/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "0f290478ede12620823d84bbe06c4be6b4e5c0e1f884de0ee733075a00e9a9e5"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.06.01-162624-8df981b/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "41a38e3b68b954c001d3c0a52ca7bd4c8f8b0c08e374a2ecc8c4e78514dc0bd0"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
