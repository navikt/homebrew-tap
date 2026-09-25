class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.09.25-153949-f21c8e1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.25-153949-f21c8e1/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "50e6bd998498fd307bf4ad3daa5a401c767a69a30d3823dc936244ae86e1ddfc"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.25-153949-f21c8e1/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "8c65c1287c1dd9e4c0c9815c6b0a9dbab77cfdea162bc6adbfcc69b1de468b42"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.25-153949-f21c8e1/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e1ce67c51cf157d42e03ece8748dc6f2ee46d0576639e8994af18d30513915cf"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.25-153949-f21c8e1/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "aa4263535c121bd09cfc2dd8703df2543125483368fc799813c586b25b133092"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
