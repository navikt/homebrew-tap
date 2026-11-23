class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.11.23-222201-bf4cb27"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.23-222201-bf4cb27/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "a2d0aec0d0fe8e32753581c23a656bbb04e9851fc1bd2a0434315161f55f7914"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.23-222201-bf4cb27/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "36c0eb826f5725698a195e2db14f5abadf2ab5e364d882e99fb333696b10d7c3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.23-222201-bf4cb27/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "be8743b168a75d44121e08b2aaaf56575b7a89f4e40724c50de9aaf00f5a2ab0"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.23-222201-bf4cb27/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "50e212857770f682e31c455438c46a3a9c2f42eaa62f25a2d23f6fe28137cfd1"
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
