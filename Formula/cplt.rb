class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.09.09-075021-7c7f578"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.09-075021-7c7f578/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "d32f6c1c88e2dfe157d7305717c5fc41ecc031b2f0a13dc169602f0b7fd7ca1a"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.09-075021-7c7f578/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "fe26a2dfc15eb1d54a8bdb7b1d7175def92ce8263666dcc8a5629586a5112234"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.09-075021-7c7f578/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1891d90c90fbc30542f642a023c6dcecefd3e0d39b445dec45f29f53be2e4fe6"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.09-075021-7c7f578/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "47c1699245dfa987341f407bcb57b5ec36ec4de4e1437f362f50c812fa7fe7bc"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
