class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.10.08-224349-03ea719"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.08-224349-03ea719/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "4ceb91582a1babc39b2387377dd6346cfa5ba331f506e86aaf898b51a2690bfc"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.08-224349-03ea719/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "d15109002178c8473319940fef72410a8c3ca210c27f8484fa9383a7bf8bb46c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.08-224349-03ea719/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "64539261252a60a47a96221127048f0293db2b8baa61d2a0f5f66b3dac85071e"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.08-224349-03ea719/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "76fbd4ce6fe4a486d080b6aac998265acde73c4ca563a855550fe6f6edcd0760"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
