class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.11.20-214214-54df560"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.20-214214-54df560/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "5ec49f58f8879f4a593f6b573d010c15db7db6e61819649668b86081df88577c"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.20-214214-54df560/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "61ef13466fd1f9719116eeb3d169c1ce33f1df0499bdc038fd5e3f8df4c2933f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.20-214214-54df560/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9ed950fe6575a413b32acdbc632b5d160f00859423fe180cd153d958d4d9fd0d"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.20-214214-54df560/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "76b889b4ce8aabe2c42273bbe06e1282e9cfa0d5f231412d173225818f86fa6e"
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
