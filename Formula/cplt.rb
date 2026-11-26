class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.11.26-212457-5430ff8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.26-212457-5430ff8/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "c998d26355df7b340b688cf34555e94c738e67e000f170cf6dd13b85318265b4"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.26-212457-5430ff8/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "f63c1740552c46b4575b1a3bda432d213b2c85c28c1ed4ba28fe9adee0c58a25"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.26-212457-5430ff8/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6b33ea868c22b856928280a2fb54fd85d6895f33671b6e116cb8b47e25342e02"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.26-212457-5430ff8/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "34df7910439d19fa44b7b4c4e5f50e9846a3c65cc03b1332c273efb024564672"
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
