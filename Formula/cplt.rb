class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.11.05-122651-dae7eb8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.05-122651-dae7eb8/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "ab27acdb668795b3eaaad9b197cd75271ca85c7c93c3e7b6bb49041c7b6c95b0"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.05-122651-dae7eb8/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "f8c611a58b3d7c68890917ff4ae4a6241a63d6bd6357fa57ca7f27533a301641"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.05-122651-dae7eb8/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "af448836433efc8da2c8eb55b58c34ad60e5dfeb43498c59a76ec300df46eb00"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.05-122651-dae7eb8/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4a255f86b30eeddeb400bf45a774a177ac3e24191e836a6d5ff77d34751d5c47"
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
