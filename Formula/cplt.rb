class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.09.10-220749-7fa9a8b"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.10-220749-7fa9a8b/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "f5760b22c4ddfb68379f18e423cbdb37994eb5ac3500a65bb92da3049d1d0dd1"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.10-220749-7fa9a8b/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "bae9b8540f9c728cd8e9c0093f60d92b4b8ea0f94accaaf4f920762607f98187"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.10-220749-7fa9a8b/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e59e1acafe5412bb8bd42e6e192f0002cc65fcf7b8ee2cfed3c7c0effa375da2"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.10-220749-7fa9a8b/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "da641e4a58ba2f6d769eaad6f8c662edd3e7ec2c2456f6fd1ee51bc52c0b49a9"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
