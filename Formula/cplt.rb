class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.09.14-065921-c09f6da"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.14-065921-c09f6da/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "5fb83b8c9cd76d7a2caa492aba441a171307fdcd5cd4872963264f6cfb658a9c"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.14-065921-c09f6da/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "e17b9d10ef44ad8ae81ba1a518184881496a4b8e1c80190154acdfc85b30a07e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.14-065921-c09f6da/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5ce00f1da58dcf4f3a6029bb827795f000810644ea5328124da3ffba862f8f23"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.14-065921-c09f6da/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b1b6b14acf8b6ca2b95cb0120e7eb528393dc4b93aec1908ccc18628a39fcd83"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
