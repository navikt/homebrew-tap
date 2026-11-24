class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.11.24-194709-a9e458a"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.24-194709-a9e458a/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "72fc692c0bb1632c3f67358793d0839036e27e92839570be287a62b94d9c1197"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.24-194709-a9e458a/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "9266f8c9f2f27d65aa4928af14026dfee70d094e93cfc9182d2a066971fd204c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.24-194709-a9e458a/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e01a6816fd18c8282dfcb4bffc3a1e532eb7e54943e3ed96c34764a4ef2c3f3a"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.24-194709-a9e458a/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4edbcdcafaba2156880811b44398d83235bcf2eafc4cd2f1fc928c6e92440963"
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
