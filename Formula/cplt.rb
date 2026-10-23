class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.10.23-145732-c42b336"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.23-145732-c42b336/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "e6a6cf3e2a47d9db122bcebba3be5da3e4a4be10091785190306678299b08195"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.23-145732-c42b336/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "423888f6a11f05adb91914d5734ace4d83e36fa1a86d15a0ec72136a3b634aa2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.23-145732-c42b336/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "41ebfda8582917467e28b03f60ea614bca4ddd86624ccb1d9bb8fd7471d959bd"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.23-145732-c42b336/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d4bdd2e3f1784eb74df803ea9b503644d5fe3c2e0f42ee47e9687293785322e5"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
