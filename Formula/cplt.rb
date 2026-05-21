class Cplt < Formula
  desc "macOS Seatbelt sandbox wrapper for GitHub Copilot CLI"
  homepage "https://github.com/navikt/cplt"
  version "2026.05.21-132854-bafb868"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.05.21-132854-bafb868/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "191fc25e8407a23f6f1a35bcc6f39c0c1a884fa688f1d2b9f4a09ffb206acda5"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.05.21-132854-bafb868/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "1e6ad290ed5b33b42422f5105dcdb993dd37c33d08dcabfc62e7cdd0eb0f6673"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
