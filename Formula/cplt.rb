class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.11.02-213041-c29cfc3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.02-213041-c29cfc3/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "e9efe238de4929e0a7f8707a85f5f3677f9a6425fb005c69828b1c57f51b200d"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.02-213041-c29cfc3/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "68ba9d4acc8da3454c856998f4265d54a04beb2e92d1514f4364139de82061cf"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.02-213041-c29cfc3/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "94fdcab411fa148a338f504f11564e81be25d2dbb1633dddc9a3d64d6386b901"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.02-213041-c29cfc3/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f4ac6c6d6e83fffd16d5eb773351ac62c07cfdeea2c3c3c49025c702f52c92e9"
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
