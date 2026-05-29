class Cplt < Formula
  desc "macOS Seatbelt sandbox wrapper for GitHub Copilot CLI"
  homepage "https://github.com/navikt/cplt"
  version "2026.05.29-103040-4ea1512"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.05.29-103040-4ea1512/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "81a70e16b7b757b239668963b3994a7f71c45a87beac4812e42f5a51df20d121"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.05.29-103040-4ea1512/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "8db4da0ab024e0c64aaab43a5f0c96c83d468ed0fa3c47546bdeed5df1184667"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
