class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.10.28-165621-52e4f6d"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.28-165621-52e4f6d/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "b731664a65a5fd51358923dc81041f2f63ed5c4a3a22103379c932f0b0fb9fca"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.28-165621-52e4f6d/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "3c258c7bd3efaddaa1d3c4977a9146bf7f6a83f127d02a2243f16a1b464d50b8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.28-165621-52e4f6d/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c276bb25aeaa97a1b90fc6635f458612b110fdec4cc5ab3fc6acd9face69e22c"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.28-165621-52e4f6d/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5b94e4a4e9b34038aefe3fed53ae5d2891985db84a88b7c71ef7df89f3228bca"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
