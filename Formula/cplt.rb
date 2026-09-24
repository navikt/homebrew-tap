class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.09.24-192459-38642b4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.24-192459-38642b4/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "db09470909eac32ae04a7981b87dd48f2574a555878c01ab6a3e37f19ad3865c"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.24-192459-38642b4/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "c3f0fed43e20c1b3de8dbce62e4e1f3fbd7df87de2a367884694493bf51905a7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.24-192459-38642b4/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c80e1b40be0b786629b05fdeb9a2a426bcd00c05c1aebd5e00c0b768a21c8d9d"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.24-192459-38642b4/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "84eae369c382d63c172404b0cfc7f9f86484ace74c952fe3de93ea36bd7a80a1"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
