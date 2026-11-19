class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.11.19-140141-2252d86"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.19-140141-2252d86/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "9979292889c8ba8d899f657d6a98a35cbdd8628c456ef67030585a9bb9d29965"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.19-140141-2252d86/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "a4f9361d6f2bc59a5614631f378efe3880567513332f8f85b625c1b08d44585c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.19-140141-2252d86/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "163ee576ec4c7b226a770a6d170529dcbf0708aa949bbbfe120933f13ef32ad7"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.19-140141-2252d86/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7e0fd20a629dcea7a9fa06ee6f9401785c65f1489661ae4d65c5d443ed15ce64"
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
