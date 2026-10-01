class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.10.01-052722-908a5db"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.01-052722-908a5db/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "a0d44f7667df3d61f7121ba63315a2e221618c44a31f4f45093e7361eeaf7b4a"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.01-052722-908a5db/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "ff6a236c2d041d06ac1a336b3b7c25d8796e858dae48d228a18d2633737ca1f4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.01-052722-908a5db/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "eb5d27d5cf1220ba0cc72b5edc9402de1b4ea0c37120d4a06842aba93e8bec2c"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.01-052722-908a5db/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "32e37d53b5cffa6d4223dc87607572d6da242a3a854c586ed111f48f010a3922"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
