class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.11.26-141813-85745e4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.26-141813-85745e4/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "642619a4282c85a98e75c52b4e63566bc66987ec8b9da6bfc031083529c52b3d"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.26-141813-85745e4/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "3c8d1414d54bcfc1841b67c0dcafb6d3435a68cf64a2cc5a85e07a68ec43ac9c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.26-141813-85745e4/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "36791b879b13d271d6c512d0bd52f7553dceebe0ade86102e53a0f7d6b484cfa"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.26-141813-85745e4/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6638718b0ff36350f8fc6561b7c44742f9f545757836a236c2d375f794c98455"
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
