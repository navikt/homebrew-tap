class Cplt < Formula
  desc "macOS Seatbelt sandbox wrapper for GitHub Copilot CLI"
  homepage "https://github.com/navikt/cplt"
  version "2026.05.05-191748-1a75f6e"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.05.05-191748-1a75f6e/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "e84c867185fb3f15bbbe06a44d403f4d3d2bfb4e0fc030f667fd9b0a7717e4e7"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.05.05-191748-1a75f6e/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "2b4930d993a40363f9aa04ecb321bb4cfd2d182cebee7fa887bb5e5132ee3445"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
