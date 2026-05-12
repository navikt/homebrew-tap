class Cplt < Formula
  desc "macOS Seatbelt sandbox wrapper for GitHub Copilot CLI"
  homepage "https://github.com/navikt/cplt"
  version "2026.05.12-114613-b76aeda"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.05.12-114613-b76aeda/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "a9f9590ddee99aa699a8627a736201c01a37ee244e827a69bbb206ba768533c5"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.05.12-114613-b76aeda/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "0f092a760d76648c62a04604754c46e9c025e065b97edac55179d9d2152e9409"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
