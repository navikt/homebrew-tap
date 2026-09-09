class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.09.09-113121-c3cf7a1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.09-113121-c3cf7a1/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "051e76d3840148db9fcbafe3a3b9901c394d011966cdf1884ded5a8bda74b617"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.09-113121-c3cf7a1/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "15abe9c7151b550963f8dc35c78719d94c4feeed84cdc9e14fd232d0e8e1b186"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.09-113121-c3cf7a1/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "51a666114851b627c1d540e5ededc94a465d9e5539aeaffdaf94f2db2abf1789"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.09-113121-c3cf7a1/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "aaab973f340b89876992856fe56da9b14a4d72f65941b5e3e45ab0c25554a35f"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
