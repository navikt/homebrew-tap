class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.10.12-094414-05e18ef"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.12-094414-05e18ef/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "fdc88e6a01734484bd2db11f21ff584b2a33c6440f53358c466a5053ef3ad006"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.12-094414-05e18ef/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "46d0b6e2b158254d621343a43efa1a15e7d6a61de117f9a9dfd6de6ebb6cb15a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.12-094414-05e18ef/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "db7a3c4d9a882ec7cc4314b16bef689234c20586424d9baeb46c0362345616ed"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.12-094414-05e18ef/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "01504589b2c142e77d2de2d292e1ea3be75e997cd9bb5b79ed1fab654b930aa0"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
