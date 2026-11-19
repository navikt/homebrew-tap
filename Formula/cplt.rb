class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.11.19-135050-bde7bca"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.19-135050-bde7bca/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "9e1d52b5b702e593d3e49ff66650488f6ff39e7210f5e60667a02a0d25a2b8bc"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.19-135050-bde7bca/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "cdc15714f63aa1813f962fbd2d34f4a5df0e42a92cf8e328b27680329df814ea"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.19-135050-bde7bca/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b987a6cabc9dbc30e3c9877285e4ad4ed4edf03c51a9fc00b3d2ff9d440b5d4f"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.19-135050-bde7bca/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "05492b3398bf5dea0fb66a6212f4849a3f9f40958fcbaf72abd4678c56a53d90"
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
