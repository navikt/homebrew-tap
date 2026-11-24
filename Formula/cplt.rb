class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.11.24-213145-8459253"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.24-213145-8459253/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "9a86ab1ac46c5655d494e32410a66a044a7d1a4160702b23d8777a7363a940a5"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.24-213145-8459253/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "985851cfbfcd12e85d8d40c1db85eb92ffce68c5aa245569a24974719ce11631"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.24-213145-8459253/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fa9effb78bfaa027d673bb658f58f3215adda7e0526909b25e42ba5a80884c26"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.24-213145-8459253/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c35b28bf5b92f1e288e698730f7272a3f47116d7b327b93e7c42c90069ac46c4"
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
