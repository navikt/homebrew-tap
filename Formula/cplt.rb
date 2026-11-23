class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.11.23-223452-b382c0e"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.23-223452-b382c0e/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "6605e40bed925c9480e9e030dc939e63efe51e8e4064bfa98350c74468baa96e"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.23-223452-b382c0e/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "a710b561e1cac1daa820a94de0607f62485617fb18f1f7fac4ee2cdbcf62d636"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.23-223452-b382c0e/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9c6302676bfb9b753649d79a30b4507561b91870b925bd0fe8c11457dad99ab4"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.23-223452-b382c0e/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d49e6a6c357f6e2a353efad3afa5dff68098d2e83c0757d31d5314b0ca2f33ed"
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
