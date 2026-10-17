class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.10.17-182418-c1696b5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.17-182418-c1696b5/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "806040680701d02ad4f6eb14ccb9fbaa34a44a1b240dfde583797e6028fbd805"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.17-182418-c1696b5/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "f6e5dc3ac5d91fcc35edb7ead93f309b638d2755746382d84198fef1ede38dbe"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.17-182418-c1696b5/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "94e24fcd448c5093a19e93d044c6616f18488de8a028ddc73cd01180927d69e6"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.17-182418-c1696b5/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b7ebf9dd9f0419c29e440855b86156e507759fdb48188036d03e58a4cd50ac3d"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
