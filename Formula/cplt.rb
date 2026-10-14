class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.10.14-071209-0106b54"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.14-071209-0106b54/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "d3000f11f6b95699ba3c7f8a07923ef733c7ba31f69c7aaf6a315cb159e2ec0f"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.14-071209-0106b54/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "ad1b143aca4acfb59d78cfb280e7fc57ee3e388b8f3af88000ca4bde3f77fc3b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.14-071209-0106b54/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8d5cb96b2c499960caa087a7d25507ad81b0ed31f5f008635d10743fe4f5624e"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.14-071209-0106b54/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ce5d52977574aa1cc7e09ca6cc714f17dac8402a9a7abed638731642f2f3bcc2"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
