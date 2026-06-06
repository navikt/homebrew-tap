class Cplt < Formula
  desc "macOS Seatbelt sandbox wrapper for GitHub Copilot CLI"
  homepage "https://github.com/navikt/cplt"
  version "2026.06.06-221934-5313b50"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.06.06-221934-5313b50/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "e6bbd84eece7da38dabc0bd42103498fd813b0fc77cb65308de780aa492741b8"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.06.06-221934-5313b50/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "915161dab45f7735dc37b2d53dcb4c756009fa9aac85b7224cd33e64b440b026"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
