class Cplt < Formula
  desc "macOS Seatbelt sandbox wrapper for GitHub Copilot CLI"
  homepage "https://github.com/navikt/cplt"
  version "2026.05.07-121551-a785349"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.05.07-121551-a785349/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "65f4c6672f5f3fc8a15a2bb6a5afefd91c205b4b232f6034bbf690e87c054d9d"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.05.07-121551-a785349/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "cf1421969e9e2f80ebe4ea1bdda91ece852a58da856a7b1d3472a5d1eebca179"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
