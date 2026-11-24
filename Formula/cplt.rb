class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.11.24-090429-ec8f4dd"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.24-090429-ec8f4dd/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "6aabf247841705e452133fc58a642d7bd1b13ad4f6923dd5ebea9c3946e8094c"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.24-090429-ec8f4dd/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "7e3f626266bbc2c4b6f9a40e76257153252b9b4c4a5b8595bf7e9190b50a1c85"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.24-090429-ec8f4dd/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4c46d08ae3ff14dae3801b1c5e6520a9dafdf2c218ea594f055995c1a27d3d77"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.24-090429-ec8f4dd/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fd6ec9b6d3e0b9244973d24b8f5d245fed3eba017101e51ae4723ab0e24c014a"
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
