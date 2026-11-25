class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.11.25-082525-7bee0b8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.25-082525-7bee0b8/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "1b7cc2086e802e5bfa59af367e775a8bdf5771ec93a14ca796a83d90c9b97392"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.25-082525-7bee0b8/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "1462d31889f0654cab354eb499551ce80028c589d3ca20334bc77922648a7662"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.25-082525-7bee0b8/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2af2d3236d713220a676b2a71e46d75e525eefa4af913eabbd740241b11544a6"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.25-082525-7bee0b8/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "56920806a22ad519f419cff79dbc62747af4b4c0efcc7488c5da23c450d03e1f"
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
