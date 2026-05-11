class Cplt < Formula
  desc "macOS Seatbelt sandbox wrapper for GitHub Copilot CLI"
  homepage "https://github.com/navikt/cplt"
  version "2026.05.11-112754-dc8f165"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.05.11-112754-dc8f165/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "c509f5547d9b8811de2b35bf2c5c65c98b7dda083b087af20c4663e7b7183f27"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.05.11-112754-dc8f165/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "cf7d101e85931fe6117235b75b25f5895e7d551f1e3ae58a822faff6ab132e92"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
