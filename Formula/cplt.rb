class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.09.23-060350-d2e5790"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.23-060350-d2e5790/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "6a70e4bde7e7b9ee126fff6ee57c76164eeb9ee9f9941855eb78c39b57f978f1"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.23-060350-d2e5790/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "5fc1864af312f68f4894900126e06b6cb3b590c19f1d60bcd415003ba22da775"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.23-060350-d2e5790/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d4a87535ec34091ce9610edd4bbe47ba14ffff1b60a2148d9643ee6f70e3b6c1"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.23-060350-d2e5790/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3d77ba7bab4ae36295fc62b3c4bed22f032bd3936ad6b9586c5a2897e1f173ee"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
