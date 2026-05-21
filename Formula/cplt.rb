class Cplt < Formula
  desc "macOS Seatbelt sandbox wrapper for GitHub Copilot CLI"
  homepage "https://github.com/navikt/cplt"
  version "2026.05.21-074404-429e136"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.05.21-074404-429e136/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "c3e2228941539cfa87161a86382201ec9045e942bed6d96b712fb8aad2eea86c"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.05.21-074404-429e136/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "05859ce2d82fc96f29d2ff0f2ad75fc0024e2f83eb182e3c8311016a0bcd25d0"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
