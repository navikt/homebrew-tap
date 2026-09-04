class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.09.04-210429-dea3481"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.04-210429-dea3481/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "e1f8d296cff5b255e749d4df41542e27242b0ba1e00d67e5598cedac7af5a585"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.04-210429-dea3481/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "a0b8e3de8ac0b83a8f6e7ebb19db6ac07aaf92e305318d0809299a6f795a141c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.04-210429-dea3481/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b4689626891c043609c0acfdbbab6fd58ff470ee451e59eed36121d36586a571"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.04-210429-dea3481/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bd97a61e3b63ed2851568c1f527b756cced5e6746ddf0481e7889da44cb8f824"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
