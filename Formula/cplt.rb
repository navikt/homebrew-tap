class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.11.25-093326-bd46900"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.25-093326-bd46900/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "dc56a1c22b297bacd2aecfdeeab5c1e4e14044c7ee5d3bf5d5c593f5097037b9"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.25-093326-bd46900/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "e66704017e218c430e4f5eee9db19ded359e69a65946819ad5fa262ff0faad9d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.25-093326-bd46900/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c218707f183d0478c1490f071d7997d78ce11a172d7bace0d204b13f9655da61"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.25-093326-bd46900/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3a36f6f28e3aee532266537941adb3447f3907d84ff31ecae21e206be2a09cf5"
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
