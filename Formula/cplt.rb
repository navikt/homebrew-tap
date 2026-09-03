class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.09.03-211835-4740e3f"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.03-211835-4740e3f/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "ca2841413d4426997ef1859dd0fa3d36f08f37f5ac7890f46e94c835bc9dbbbc"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.03-211835-4740e3f/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "afe2c1482065c90e15e747bfa6c9d6a14abbe433d727f7a0afc7905073bb0eb0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.03-211835-4740e3f/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1ed1aedacc5cb23071782f81f66fe41fc080449d4920b235263b94ec3a67bffe"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.03-211835-4740e3f/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b25566ce160ff09c20d2a067b27fa0def361495c2596c12b75bbd03059306ea3"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
