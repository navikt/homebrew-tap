class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.10.21-115541-d962b89"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.21-115541-d962b89/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "da33224bfd2fbcf466ad8efafde2e792c6804bca7c6e88e68e35fd9e41e6c44b"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.21-115541-d962b89/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "080c7efcac284db2d6d84574e06a570536b879db49a0d7aae2776d85f16f8dd3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.21-115541-d962b89/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d6cf0d98d672f0b2448d4505731d1f4c91ff6c2f8efc15e26aa911fd37d3eeac"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.21-115541-d962b89/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e9b390e1ae9a79ef62afa4a6ac38afbf8d209e37a9fd39f748f8fb5b4ae4f3a4"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
