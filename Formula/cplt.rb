class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.11.24-182510-11393df"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.24-182510-11393df/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "26e1018e980645e9579ea38f38eb30662d70ed59c429c442fab06442b0b7f530"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.24-182510-11393df/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "4282461691d1fc9d0c15becf92b0e4df2ac443a579fc5c037cdc309451d9083c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.24-182510-11393df/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0da86153a2722922202db57b284dfd385f07c3ff4888afca9f719c0d3750ff06"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.24-182510-11393df/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c85b095bc383ca0cef9c7507012480f09361e8508a53ec5acebc45693b23b7af"
    end
  end

  def install
    bin.install "cplt"
  end

  def caveats
    <<~EOS
      No cplt config yet? Run this to get the recommended defaults:
        cplt config init
    EOS
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
