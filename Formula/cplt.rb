class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.11.05-113817-5e80014"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.05-113817-5e80014/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "026f6207e429851aaad93e6601f711c3d4c2c3a13acae081ba4539194525b288"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.05-113817-5e80014/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "be63aa26d75eaad1c7fca01a0e936475ae1cbd4d911fd2cefad95bc0a2d58209"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.05-113817-5e80014/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "028301c3f66d7ee1bc02d4d050e1d9f7a275afa3ef116c5b423a0f199b8adffc"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.05-113817-5e80014/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4de217ba40953c80f4d5a74cd19428d96272ead4eb9951686d627f446cd6858c"
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
