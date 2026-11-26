class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.11.26-070429-f0295e7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.26-070429-f0295e7/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "4db952a6c3c7be62ada227351e259efbfbe9b30e3eb35b903c5e6ca49d054055"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.26-070429-f0295e7/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "e8a6dc06158598d52621bc1468e72c6b5e8da9fa9d7231ebcacbd3c5c73fc959"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.26-070429-f0295e7/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b48741a2b22aaec850b9cbe26979cae4e12f6bf2d1da3da194377f06566e6866"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.26-070429-f0295e7/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0f51c41230f2742a0981723ed4e978152f938841f16bc70a5a5a48f00b201db5"
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
