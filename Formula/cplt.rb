class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.09.15-105708-50687d7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.15-105708-50687d7/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "7177a76366289c22aa5955be534e00a2768baccf2633d9d24d07f3e3118e7c44"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.15-105708-50687d7/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "834461c6331ac3dc159e963a3c9ec71b74f709d7fede4ccccbc138e9147f0c82"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.15-105708-50687d7/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "442970bcdc7d871c921b577b2f253bdc86fb8f0fa1f005d1949c0fb859e743a3"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.15-105708-50687d7/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b6b5a2a5f2a78af04e15ec90fb3b9bb318054b302e07d724cf7670b50dc8054a"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
