class Cplt < Formula
  desc "macOS Seatbelt sandbox wrapper for GitHub Copilot CLI"
  homepage "https://github.com/navikt/cplt"
  version "2026.07.04-092848-5c78640"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.07.04-092848-5c78640/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "b1ce7548d4f0a2f8b39af4d2d19f33fb8a3157ef7568e344abfd1bc64443513f"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.07.04-092848-5c78640/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "1bc36f6f6fcb2f78fda0ce289c00b57a127af5f63bb98e3605f54ce2b369a01d"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
