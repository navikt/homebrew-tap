class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.10.14-181955-b6e2f5a"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.14-181955-b6e2f5a/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "e474b34dfc2789f4be1cfdcb7efdfe3820085570c0e55fe10ccba41ec14dcb01"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.14-181955-b6e2f5a/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "53ee074d8c10b71e5ebfad5f040b58534a0b92504c9e53a7c008810a958ebaff"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.14-181955-b6e2f5a/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0f6fde539948320e2edb6d1152ece353cd97651c168783e92633e40e69afc2c5"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.14-181955-b6e2f5a/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b8fa208f7447c6058531abd418480bb2dfd4754252e3614632544c0fa2cb6ed1"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
