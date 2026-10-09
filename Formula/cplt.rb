class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.10.09-143450-1c80c92"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.09-143450-1c80c92/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "7bf44bd987f7a166c2b492d65cf6280c5e5552b790e2190e2feed1802b6b3325"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.09-143450-1c80c92/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "5ac046849a84ac2b87f78347ed40d710105ddd77391c8f946c7db8475c01ea78"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.09-143450-1c80c92/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e5f81ff34850b53aa734dc1e400bedc0d0308cdb28e77a280b5079a22aa97804"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.09-143450-1c80c92/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "355a24c97cea07279185299ef1c05caa9d5e1c8022c3c9988209391bc732d736"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
