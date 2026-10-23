class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.10.23-070444-7f0fd16"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.23-070444-7f0fd16/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "008c09d3f13c0cce155423fe5049fd75cfa91f1e7cf68156214ab7218f6d5dd0"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.23-070444-7f0fd16/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "cb78ef2b1592f6a5b331b7744a884e52b31b6a44676717acf65850dab44032e0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.23-070444-7f0fd16/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4330e2dc5b90f268a6172ce5113bc71591922f697f7ec8cf5ad1c546cbbbd5e2"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.23-070444-7f0fd16/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cf68dbf8472bb6b0d3cc8f206d2d419e871f6171a2a22c1e06151015872263f5"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
