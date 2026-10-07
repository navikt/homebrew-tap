class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.10.07-073622-128671f"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.07-073622-128671f/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "a13550541c56001d1158468ccf47cb7aee801daeab389250502f51338673d7ea"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.07-073622-128671f/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "f88971ceea9dccea1ac1a330374de722b08a3cecf9c8ded6f552b1ab85c31139"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.07-073622-128671f/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c225a3d692d0d9a09a9d2a74b6deb8e6fb1bf2b43bb84a67158e169f236890d9"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.07-073622-128671f/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "09517cfacabfd42fecdc4a12fcefd06943f2f243cf4ddfd8bcd316b7ac1cef3b"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
