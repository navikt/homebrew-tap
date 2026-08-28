class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.08.28-072940-7271524"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.08.28-072940-7271524/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "66f784a54b0c5a7ff839d5a69a8a686bceb7ebdd1990c673b6b190a022e0b39c"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.08.28-072940-7271524/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "ea8af05f1a46f2cb62a864771bd29881065aa158d0c99d7b481d6a66964e58fb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.08.28-072940-7271524/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5482416005cf6898e3641c9cbbb9b7776b783925e5367dce679befa9842bd812"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.08.28-072940-7271524/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "74e03ab5c70576805da39260dd434388c3cf6d6d0af4021c8693a1e151648d6b"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
