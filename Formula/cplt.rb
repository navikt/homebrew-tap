class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.09.23-111433-e7b09bd"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.23-111433-e7b09bd/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "371e0cfc05b25c7f655a98f6c240e122658102e63eb53c85e6c76c1eaa663098"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.23-111433-e7b09bd/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "fcadcceff592acfe2e36270b77ee7b777b0ffaf6b718abc6ee82f0458adef6f4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.23-111433-e7b09bd/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d57c69a68fbfe2b2fba84ee17cccdc8e349816d553d475845273fec33eda7859"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.23-111433-e7b09bd/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "672bdbc2d07610e84207759765f1f89690ec5c270a0bbf124be863fdec428236"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
