class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.11.24-185501-4cf1890"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.24-185501-4cf1890/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "03018c5c0bb59664529dd9c41a08ee460aaf8f4a06eb5cf5c8569ccbd401eb8a"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.24-185501-4cf1890/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "18131c23f37fd58becc5b1c8fbd653121948c90c70763c30ef9e5c2a0d651fa6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.24-185501-4cf1890/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3143b7f1d7b371aad81404d8d27c66fb0fc2f618388355d86be33906ca1b42e5"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.24-185501-4cf1890/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3ed23903825959b7b8d170a2e390c51aa2784a621e3e88958f96159601b58db2"
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
