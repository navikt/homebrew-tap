class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.11.24-110750-e64ece0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.24-110750-e64ece0/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "89a42c585a6cf54cea79dddabffa1f86173734b595aa416908c559191ff3c029"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.24-110750-e64ece0/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "517d0d44058c13aebb1997f632cb9630f46ba82025243cd7e9afb324d04ded35"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.24-110750-e64ece0/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a495280987b664b8c2cd684a514b574eaa893ff5f56fe8c1de85407472aa8a95"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.24-110750-e64ece0/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "aaea9187cf0de345c91d6c8f63cc1771837b5bd120cfdae295bb6fd4fd3d954b"
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
