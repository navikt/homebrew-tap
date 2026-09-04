class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.09.04-144732-3b17b5a"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.04-144732-3b17b5a/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "6e61a13b1a88cc6dafff550e3b841fe6e701974c456912904fa45b66628c1ae7"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.04-144732-3b17b5a/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "54d003c6121d60201b7e3d95e5ffdbfe7d3f4708395d7616ecdaa6698788c05d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.04-144732-3b17b5a/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "903f587f8c5703d9820b80ac4ddbd39427fac15b704db804edc53ee1b18d19af"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.04-144732-3b17b5a/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cbeb180b615d8dfd8d4962785973b80bf8bcb2b3aeeaf8ad4edbefdcc9abea81"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
