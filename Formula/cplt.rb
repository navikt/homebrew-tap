class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.10.31-181434-5e06c82"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.31-181434-5e06c82/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "60fdbe76f4bb2783d91a71afbf0a6ed0d49aaa20d27662670c080c1e3ab698b4"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.31-181434-5e06c82/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "d40fa81186edd15dcc2b60f2e9f50b69cc23ae966bb7d271de8c9059c3d00c5b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.31-181434-5e06c82/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "14a0b4e6f7912766986acfe83deafe9f000db38ff8f748564cdf8ed565b31697"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.31-181434-5e06c82/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "56b3caa61f74586e7c080d43fe903e08bd7b50a318a753b21eaee668ef3f64c9"
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
