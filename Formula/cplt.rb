class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.11.18-133441-a0d4a55"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.18-133441-a0d4a55/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "034253fe54a550c129ef0c9dddd7a3ab9b51b2fe2ff8c64253f5b72539629b07"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.18-133441-a0d4a55/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "8d6048640677e7eb22a76bf968180fb5d3bb2f9eefc636685c77b4c85dff919c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.18-133441-a0d4a55/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1a73a3e6b1cbda530a6dc7156736a6b192a0dc00707ea81038a193031f2a91dc"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.18-133441-a0d4a55/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ea6a86861b890b19210fca047d51549d0734881ae7bdd5d671f9611c97c58324"
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
