class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.11.26-101524-d8302c3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.26-101524-d8302c3/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "167f8b6fb3dd82e8065164d21e52db05f939dd205bccae5dfcf9ebb5c2b065c1"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.26-101524-d8302c3/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "44e80edcdb6d25dfe485869500841db81f175eeb7af5413de00b4888d03bf829"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.26-101524-d8302c3/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7a3443652354561b6684198026e0900751610187dcdaae0c394e0f8a8338422c"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.26-101524-d8302c3/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3a8a1721b847cebc43d16fe925911063bc1ed41ac9e1a874202af8336a409088"
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
