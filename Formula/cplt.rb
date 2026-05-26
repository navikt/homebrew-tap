class Cplt < Formula
  desc "macOS Seatbelt sandbox wrapper for GitHub Copilot CLI"
  homepage "https://github.com/navikt/cplt"
  version "2026.05.26-203210-58833eb"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.05.26-203210-58833eb/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "3f569ddcc0009e407281be7a5cbe74ac7e0fc38b9219a970e61eb413a37a36e2"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.05.26-203210-58833eb/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "59f763f5d4782d0d7fd8328dda531ec3f62f2da26c75bc5bda3dd3e1d6e504ea"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
