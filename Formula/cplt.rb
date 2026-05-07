class Cplt < Formula
  desc "macOS Seatbelt sandbox wrapper for GitHub Copilot CLI"
  homepage "https://github.com/navikt/cplt"
  version "2026.05.07-094958-c7d0da2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.05.07-094958-c7d0da2/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "fe4a401b3159335be8bced6342c1dfbf47cc7d2b675c429fbe3fc272cf8c76b9"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.05.07-094958-c7d0da2/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "f6d4c6ccb9da8f2a1aab649512f718406148454d10c0879c417a76a80fac01e8"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
