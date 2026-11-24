class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.11.24-205609-1ddbc16"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.24-205609-1ddbc16/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "5d0c46750e6bc75b21a2d041730181c427e52d00e1c19d6fda5fc315069ad41c"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.24-205609-1ddbc16/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "b525eb42262be1013692f14bdfce9fafe6021519474d49fb3dadaa8acd522d3c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.24-205609-1ddbc16/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1feea7ced721be21543436ceccbe133af5585148ac81eec5fd7f75ea143f1592"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.24-205609-1ddbc16/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b8c73d9d9792c3a6052a4f3ee4bb65c8bc3223ae0d826481e996cffddc0883f4"
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
