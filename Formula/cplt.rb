class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.11.26-082228-3df57c7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.26-082228-3df57c7/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "7c7e47050813d36eba65a117e1cda37ae1b85b8ddbc4df9548058eaa05d4b44d"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.26-082228-3df57c7/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "779306edb403c3ded7460ec193c8d185e3b0c3c927d32a25f993abe13d7abbe4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.26-082228-3df57c7/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d1eba7aa416ee597e444b64c0b9aaf0842ca846764bfc876e9ac7baceb0cac26"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.26-082228-3df57c7/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2c1e23d80f417fcd6d6461b4bd74c97bfff6c9c510a97d67447c3d84ec67a913"
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
