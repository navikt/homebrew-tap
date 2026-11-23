class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.11.23-180616-c49ba70"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.23-180616-c49ba70/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "c2d7964f62cddaf7d481bdb7fe71650c302abc3a7315e03e897e323c67981935"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.23-180616-c49ba70/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "ab81b9b0d17c403fa5fbc69733f73b441db85c44e1ac5baa4f971d8387d72c53"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.23-180616-c49ba70/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2d4914ff156ccd4c988bdfcf550a18989dbc12361a483e1ef4c81ebb249766af"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.23-180616-c49ba70/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4309446946985495177fb794a59639dd9fa6df4df7d4419d1f22f8d2aa1b1060"
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
