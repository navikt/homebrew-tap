class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.11.02-144508-e414710"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.02-144508-e414710/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "81d0bd4361258d9e5ccfed90460af649296a4915af54b4db4e3ca00da30f1484"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.02-144508-e414710/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "c5dfc14c2985886ac59866c5ca83c0cb376d28b4c2f0f4fd354409ce1976623a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.02-144508-e414710/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ee90a384f858488b6ed746ace15771e7b4b11c822c0daa244ac77aac9d45df20"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.02-144508-e414710/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4ee35696145a26bb996da5db2ed9831604c30093d04ab37d3cff81b5e8c4a561"
    end
  end

  def install
    bin.install "cplt"
  end

  def caveats
    <<~EOS
      No cplt config yet? Run this to get the recommended defaults:
        cplt config init
    EOS
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
