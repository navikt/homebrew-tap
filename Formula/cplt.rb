class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.09.15-133238-d3ee095"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.15-133238-d3ee095/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "06b92bf8d44325145b23ca8b3e6aeefc8274ef26e2d22d059c7b18f3a27e9515"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.15-133238-d3ee095/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "67db2b14c711a68bf9bb4ec5e57ec0ca53051e78ef4405567b6769474bb21444"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.15-133238-d3ee095/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f7f074cab4d0c77b0b7353583ffe154b0ff52a3170d608fec8a55c996b217693"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.15-133238-d3ee095/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cccedcdc1a63c7fea7ec0142304b076f4101668cc4630f37ffa2681e121a6f1e"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
