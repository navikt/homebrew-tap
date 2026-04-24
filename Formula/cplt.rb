class Cplt < Formula
  desc "macOS Seatbelt sandbox wrapper for GitHub Copilot CLI"
  homepage "https://github.com/navikt/cplt"
  version "2026.04.24-121916-afa3ec5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.04.24-121916-afa3ec5/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "cf3eabb98cf92e1d1c5af3c34a8b1022dac0a1fbeeadc011da2a191357a08a52"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.04.24-121916-afa3ec5/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "d2a466de66f6ad07240870e310497a13ba9e1824d9ff140a611d47f144a4c4cc"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
