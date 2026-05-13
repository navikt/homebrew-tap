class Cplt < Formula
  desc "macOS Seatbelt sandbox wrapper for GitHub Copilot CLI"
  homepage "https://github.com/navikt/cplt"
  version "2026.05.13-194609-e27ef9a"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.05.13-194609-e27ef9a/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "413885ab2c747242dee619757fe528077fb87441fbbf55b49b3d66dfaa47723c"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.05.13-194609-e27ef9a/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "aaa657d9bede2e49a02ca1b26df593d5e3be9a274ecadded74b14372b763f55b"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
