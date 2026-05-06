class Cplt < Formula
  desc "macOS Seatbelt sandbox wrapper for GitHub Copilot CLI"
  homepage "https://github.com/navikt/cplt"
  version "2026.05.06-113137-aa51cf7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.05.06-113137-aa51cf7/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "6103f7be28737d5956fb9e5de4088cde4515ed1d003d1164d5461cee54e3c1c7"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.05.06-113137-aa51cf7/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "433ae5b8846541a0930baf2513d23e174dc18c8e991facf84e09fc85e58a410f"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
