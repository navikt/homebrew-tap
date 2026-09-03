class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.09.03-064703-07c71cc"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.03-064703-07c71cc/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "8122f919d5679bd368d29b0564463722a9920eb790573029f5958d09e0a6c357"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.03-064703-07c71cc/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "f6b2373c6fb1fb2c91c1b867d45a3f25778ff86bd442dfac49d0125d1485d941"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.03-064703-07c71cc/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5250c856104bd0c612394bddc1e1bfdaa6463aa6de93cf9aaefbddc8996920bf"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.03-064703-07c71cc/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f013c68905c466b6fc3570c481288bd362892eebee418184bc5394e3eb8b6582"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
