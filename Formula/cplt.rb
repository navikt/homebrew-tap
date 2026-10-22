class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.10.22-172931-b37a8ab"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.22-172931-b37a8ab/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "3c867adc3816d00ac380bdad189cda69fb514b91bf95ab59b02c20baf72c8769"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.22-172931-b37a8ab/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "52db0b27bbf0d18cabbbdb9d545855089c59b850cefbb70bc229815618e2d73c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.22-172931-b37a8ab/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "cde7d69d05772ba81d93e9c8938035042656529412bb6b085c666bab95999eca"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.22-172931-b37a8ab/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6716809c5feae7d2d0ed3d71a1e2e5c70ff8489df0a6ad401e898e9a78a513b6"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
