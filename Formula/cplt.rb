class Cplt < Formula
  desc "macOS Seatbelt sandbox wrapper for GitHub Copilot CLI"
  homepage "https://github.com/navikt/cplt"
  version "2026.05.13-070452-9782f94"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.05.13-070452-9782f94/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "6e291833c86c6abe2a4b1822717b5844c3caedb05baa52c4feebc90fde2f5510"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.05.13-070452-9782f94/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "8418c6db31df6d7ab63a84560f35986eacde5a890102f7a0d98c04d9de5aa8f2"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
