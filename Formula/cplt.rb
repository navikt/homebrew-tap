class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.10.29-085957-035752c"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.29-085957-035752c/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "e8e3105db5e72c2dc69d96242e3663dd24ac040af85b6eca181adcc2b1cb136a"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.29-085957-035752c/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "bddcc3d126e03eb2697aa5ce0a0ace59c4bf06efc04edb58bbc10c23c9c7d9d1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.29-085957-035752c/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "47963eacac2adfdab99193b9b16aa2404a36aa2aaca2c1b7b0ca92c2ffd66750"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.29-085957-035752c/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ccb2ce97ac968a910062a2395573e13160bc47c20fc1874e772f7b288b81e5ef"
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
