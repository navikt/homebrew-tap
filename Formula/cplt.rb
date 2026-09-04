class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.09.04-081715-4b9a2d1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.04-081715-4b9a2d1/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "17d0276a31df3e3120c68473dfdc3912200cfcde001dec7bf23b7b3e7aaf97d5"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.04-081715-4b9a2d1/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "8174a9d51b2fc183855646fca5d8837373e61cc94fd1d95056bc7b349d5abdb3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.04-081715-4b9a2d1/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "557b5ff02e6a14825d6853cfb77abdb92205bf93cf7ba0b656bafaa697b965a3"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.04-081715-4b9a2d1/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "64d79edee59d5d4ac29cad16e14a893848523541a5e10392e8b95ffa78c3ea30"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
