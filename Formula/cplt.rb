class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.10.07-095603-d295b65"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.07-095603-d295b65/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "13150fda2306b8a88cab4779a133522e60cd05b58dfb208f77d3ecf7c84f6870"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.07-095603-d295b65/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "115b5e36a865a42662b5ba707c8651862b262f596b93967e25953981d7076e34"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.07-095603-d295b65/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3bea539c43ca18181fb429206c2796eedef255fd4d5f00fcfc308b7ac7541b90"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.07-095603-d295b65/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "29e63a097884434f38f1999638d51c0394d33caa2bea114f9c96083faac1f491"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
