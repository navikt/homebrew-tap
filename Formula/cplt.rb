class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.09.06-154522-f2a32d1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.06-154522-f2a32d1/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "653653eb5bdfb5ee7ea75eff6ecaf68c7729d4c7b25d640a9159ea072515f029"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.06-154522-f2a32d1/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "0148d1349d5eef4b5b8dcc6646620684a275001d2a0e20360d45c51d4b016e03"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.06-154522-f2a32d1/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "14a6387c11b1aa2f7d19198bd12f4d81667cb0c1ef80d3a90fcc2f8c87469e82"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.06-154522-f2a32d1/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9e8a21b6562c218f95414ecf71d721b7e3c0c25021bf7c5ec10b77b54e5463c1"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
