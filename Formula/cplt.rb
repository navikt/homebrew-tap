class Cplt < Formula
  desc "macOS Seatbelt sandbox wrapper for GitHub Copilot CLI"
  homepage "https://github.com/navikt/cplt"
  version "2026.04.14-204549-3813c03"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.04.14-204549-3813c03/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "cd75a9ff9fdf780f68a2652db069c13061a4028b57e50ad3034382ffebc0e84d"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.04.14-204549-3813c03/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "3b0ef4b9b4a7572ee96c0cd05794087bd891bd4cb335a4d53961ec504def644e"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
