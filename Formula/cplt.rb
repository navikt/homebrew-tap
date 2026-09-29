class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.09.29-113343-7a9ef00"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.29-113343-7a9ef00/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "b499af7c26f6ea67820476b32cf906b23127a0e5ea851707e04f4b4832f0542b"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.29-113343-7a9ef00/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "24a6934b2f37c19ea6ccb2970f858f97615649890b590fdf10f8c2e00796ae2c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.29-113343-7a9ef00/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0d02629715ec4a5fbf5a4919f953156a8d5de0591d56645826ef0b04b495ad52"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.29-113343-7a9ef00/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "69b749dbd55b9602fb33efad44027ab4f229f03ea204822cb069b888cdd0a79f"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
