class Cplt < Formula
  desc "macOS Seatbelt sandbox wrapper for GitHub Copilot CLI"
  homepage "https://github.com/navikt/cplt"
  version "2026.04.09-310d596"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.04.09-310d596/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "68938a87437a498bdbae7681d647586dd4f064600bd1c16eaf9a48b9ad383df6"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.04.09-310d596/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "84d2b9312cbc9321f94581095f5494813f89a0b1472a260cde64e9f40d09f3ff"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
