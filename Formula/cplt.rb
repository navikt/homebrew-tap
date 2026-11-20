class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.11.20-122112-796ac71"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.20-122112-796ac71/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "85bc86be6acb11e2b9d42fe0fa9c2af90d09586ac5249be7aaa8be14c16f1c4f"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.20-122112-796ac71/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "368fdc1020b76026c9ae114fe0484ac888b63b520b27eb9cbb1c307d49d7c0c4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.20-122112-796ac71/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "780deca2a96411bfbc21383c80e854a793281cba5aac4132dd9dd89541a1ff53"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.20-122112-796ac71/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2cf217f02b480d04d77d88428c39461cb7afb61c3d3a8e78e549573feb8e6ee0"
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
