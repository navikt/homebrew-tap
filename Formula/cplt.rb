class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.10.24-184905-5032ef9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.24-184905-5032ef9/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "3fd3d3cd86f56999e27c6920eddccb695be932670f4ddb57882a3957394b365a"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.24-184905-5032ef9/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "7fb0b1901e690c86c5b5fbcee6cc656293c01cfc8a6fcd53309a72dd2ce9103f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.24-184905-5032ef9/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "16f74fe62d8413de0532f3f85e9f6df24a2558f6949403ec9ce9f3aa7bc2a5c2"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.24-184905-5032ef9/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d88ae0370e341fd9911222e8bcdb7d44a9eafb9fc1d1f5d84be04355bd69b0e1"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
