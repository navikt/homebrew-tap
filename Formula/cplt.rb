class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.09.08-213443-edc5902"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.08-213443-edc5902/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "1a66c572a50622b86a8b029b4ed3d44c6e2b4bfc4aaa317ff6de08a3482ef81a"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.08-213443-edc5902/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "9aba2745a9f4cbffedb75dcb2dea39d3ae35833b47bac375c98908744a33a2ef"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.08-213443-edc5902/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a122896f97224cd19370e3c5d9f7cc94183bdb72aca2a5828748a4216a41f217"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.08-213443-edc5902/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0b5c6be37b0a3d3b4deb75094d4939400f6f2ce1d08f5bc4def40f1ae8d50841"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
