class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.11.23-184154-f4e9295"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.23-184154-f4e9295/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "7a3d77e76f1efc95b589439276b06dd0b2539bb41ed5ad89421f439359030e99"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.23-184154-f4e9295/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "ac3928e6edf67daf1611fc357f458db9dab4328384b00fd8a739565e4a8cef27"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.23-184154-f4e9295/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a10a83ec6311375a7f5df681818f4b6af83d165802eb388bdcda823ab0258e29"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.23-184154-f4e9295/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6e1063fdeaab9bec9ad8a4e38033de9e08ead6b1e783a4f1ffacb1c27289aae6"
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
