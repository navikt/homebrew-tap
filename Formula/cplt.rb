class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.10.02-122026-a6eb90e"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.02-122026-a6eb90e/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "099b0deca23537f794815c00432a2ecc1674c7247871aaa310a5d6d6db12366e"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.02-122026-a6eb90e/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "f032d839e997ae027c57dce260c9185e205f472d5bc2df1e26c4ad7e1eeeda98"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.02-122026-a6eb90e/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0c11a876696c5bab944a11d7ac6ee8a83d7dd1ccbe84c38090fac070e04fb335"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.02-122026-a6eb90e/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bbf199ffe87b37929bce9585992ed857c6e2e50aa16fb1da506b11bf0a922868"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
