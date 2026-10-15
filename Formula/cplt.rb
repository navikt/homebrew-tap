class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.10.15-064814-3fb0c70"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.15-064814-3fb0c70/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "26a75e697d10eeed755497e4a041f4e47295f142e517deca6c5ac542458d50ed"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.15-064814-3fb0c70/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "848e494a9a7ca9cee662e058e5e967dd51a89214c84d741eb65b7da90bb813ce"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.15-064814-3fb0c70/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1b2a20d9ff7b41a29361f151c99a21ddc83b3c6cd6ef31b91373206bb38a4d29"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.15-064814-3fb0c70/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "08e5db5ae543d1d0262a9b02824932426b5c30c604b9001815a671439e477ed2"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
