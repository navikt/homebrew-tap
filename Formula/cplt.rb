class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.08.27-180244-9b92404"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.08.27-180244-9b92404/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "1ceaba523fe5fdcb7b2961ecaa301b8e8ae2c41d335fa5a54bd7e305b751dfac"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.08.27-180244-9b92404/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "d99899a021ae6a9b4663deefb2255497c61a2e39a654719988680d8f3e2d60db"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.08.27-180244-9b92404/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "383a27775599de5f8d9ec2a022e209bb689efa3e1f50717fc7f7b79d90265a46"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.08.27-180244-9b92404/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8d17335c040fe909ec6de00a63fbff3db14fb8f92dc80af769880a05e4eb7bcc"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
