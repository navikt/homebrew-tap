class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.11.24-171721-e131eaf"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.24-171721-e131eaf/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "f246b07323e70e96d06cfecb755d72779bcefdc6b84f1830733c86376f71aa89"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.24-171721-e131eaf/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "d0d0c9646396440edfe120ee6fa70e20dfe419c6250dd1a21bb4f055d012964e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.24-171721-e131eaf/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0a8e54d09cee831d468cb7edcdf06a9a9a4aa2bcaea09324b267e116b495d199"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.24-171721-e131eaf/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2172f2d78c79b2084f49cfe532a2e492d45b03957fe533b90272e2a200e4f349"
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
