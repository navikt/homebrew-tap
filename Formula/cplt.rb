class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.10.28-180408-d70b8d3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.28-180408-d70b8d3/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "fb2b8400cdc4d4a333ea31e00730b5e553303ffc57dc9b80d17b6032f575c6f6"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.28-180408-d70b8d3/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "ff4f663ca29764cd7396b26f08ec047a3af3974e61efedbbdfce3665bda6d26c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.28-180408-d70b8d3/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "134fece117be67dbe0f7aa2d8152fd724e32cc557f548d3a23626290e3282ec4"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.28-180408-d70b8d3/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9b4a03496068303e797a48f3c8be47a3743c8cc5c163bda34804c2c0303500bd"
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
