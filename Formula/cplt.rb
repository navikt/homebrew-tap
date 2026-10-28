class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.10.28-214515-24db637"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.28-214515-24db637/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "ce0990c36663d8d725926a6cda0d7ddf761523cf5d41bf8fbae13d0def7a3693"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.28-214515-24db637/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "4e6d2505afbd673c9ab233dfe1a8e7be3874f337717f22a2047b5e36ff73584c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.28-214515-24db637/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1b5851c6ba27065537bdb58d12ba737bc29ed34c83bf98cb5a38684beecde77c"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.28-214515-24db637/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2a3848f236cf5f38483ff780030222067b6ea2b3f39f990ce75fd6c1b411bf7e"
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
