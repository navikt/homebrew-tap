class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.09.29-124510-dde1400"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.29-124510-dde1400/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "631ff1390ae34136c2cb16f3905edccb6feb1bb1ef5a78ff6da9f0ece74bcbe9"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.29-124510-dde1400/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "f0d9965781528b61fd97823f9faeaf0fc7611993c424d8a05897c351369d3611"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.29-124510-dde1400/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8c21a7892d3ecd10cb83ad8b59dc1a4476ae26c1d9ff97879a0405869fc82042"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.29-124510-dde1400/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2b9e3208c699898a6126a288ffe008846de6bac05f4f9f373dd7c55c4d5b9549"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
