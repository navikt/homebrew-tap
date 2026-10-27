class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.10.27-133320-cd5cee1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.27-133320-cd5cee1/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "d69f4c46caa6ee8a22291a89f9df201be40f118630aa59ff371aedfa217c8d69"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.27-133320-cd5cee1/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "f06d685489123b1a8ed61e3d0a3fa01b4a1f90faa363a2dd6f51c7965060e125"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.27-133320-cd5cee1/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "40af19bbe63b1c7a7347fc3ea2a2794119385de04cfb7adf4e5436f9fca455d7"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.27-133320-cd5cee1/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "dce70a62f67cc86ca9197f5e394784ad77efb25f60ef33debe19efdd54d40498"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
