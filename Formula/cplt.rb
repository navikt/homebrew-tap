class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.09.07-090200-17545a0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.07-090200-17545a0/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "a7566902dde2a5d235a0e1fe583f386dbac425768d7f85f1aea0d3026e0cc6f4"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.07-090200-17545a0/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "21cc878297e48ec943fce4c5d12414f7bdbbc0d210c93bbdaa6daa1e542cd74c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.07-090200-17545a0/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "87ba44b8ec911b82068046011e66d7428789f3f69f68ab0b5ea876df4b0491f6"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.07-090200-17545a0/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7c949791fc54409f2b43c6a9bce7523e47a6119a6e020b7905ea11737e3b4490"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
