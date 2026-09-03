class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.09.03-060559-d67d4fe"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.03-060559-d67d4fe/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "d87bde4290e7b505c1126517e39fbd37f0e30579aeedaba6a8b0205093f71676"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.03-060559-d67d4fe/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "4acc5b87217dd95541657f859f51406159956e602b489a324daeba5f872f9c01"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.03-060559-d67d4fe/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "274f00d46d73ea7dd034f4a555c57c6f526579025c35450df9413afc2b9780f9"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.03-060559-d67d4fe/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b8885aed3f9be4e59f6de5507ce2dac8668339e48296a72d855cc63aa7b81e79"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
