class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.11.24-112325-0b16284"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.24-112325-0b16284/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "2103f2ffeca32ff58148b6b31547a6daa9246adeeb25c48e2cbd82ee4c0c09da"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.24-112325-0b16284/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "c15753bb4d4b50fa5af31c8ce164f52101c9a0fd28c69d6358b1196592518ed2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.24-112325-0b16284/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b22d1e04500df3d245fb85b86bb90f41780afd507cde848f7ea3ef162bc3938c"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.24-112325-0b16284/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a0e7cc75bc5fed4979ad0c25cbdc6ef885395eb7d3d2621d7f02f07d2d8f576e"
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
