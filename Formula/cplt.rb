class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.09.23-070230-341da46"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.23-070230-341da46/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "b47cfad07606b039218bb4e7b9f2daf5a2c9c939749f314cd3ab9841b4648b8c"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.23-070230-341da46/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "3b7818585400edb85f0638370ffbb59b5ee8582875ecb560eb03f631b27f40c9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.23-070230-341da46/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "47545d432264bb13c8a4b266418107fe1a983692fe2dcf71bcf91ae0f834769d"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.23-070230-341da46/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b2ad7aaa5d248938b8fb700ff2d585a4fda184cbb7e9e7892f1a037b5f420e65"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
