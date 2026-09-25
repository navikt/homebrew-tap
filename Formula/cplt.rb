class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.09.25-091523-a76955d"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.25-091523-a76955d/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "22e4031bc1544662b992d2917ff3150c90d77a401b74032fd3141c108155a1ce"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.25-091523-a76955d/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "9ebc6f306638291c4e5f436163a4205df86d48823959a1d86575d40326ea7193"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.25-091523-a76955d/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fd3d072faf27dedb5a0ce29ba15d84c4d40c5cf41e4ece20df4fe9883fefe0d2"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.25-091523-a76955d/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3d9a6767cc30277239c9cb2d842f094161ac22bd6a9931fe37fed6ca1738dc24"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
