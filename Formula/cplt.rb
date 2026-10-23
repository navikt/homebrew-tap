class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.10.23-135912-8b3087b"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.23-135912-8b3087b/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "2002b6644ea511a70af0d664359c5d7639f2d0e83eb03c1c6ea7f06a0305c1c5"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.23-135912-8b3087b/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "f92b77dcefcc3e49adc73c277aff8ed79dc0a946a927f9e5ea9497831ef2f432"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.23-135912-8b3087b/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "88a5a20f1183ecbe9058790cd2ba5dee4ccfe8da2b89954b0e8236d3655881be"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.23-135912-8b3087b/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "47ead82a043846144e9da234fdd19fccf13e818fee93c67a9648e45a2846e928"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
