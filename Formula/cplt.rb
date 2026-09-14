class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.09.14-154939-7deee1a"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.14-154939-7deee1a/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "c8263980d74d8a7461626efa49992f01413e4129a65f0a8455aeb74d03fb03f0"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.14-154939-7deee1a/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "5f06cfb583729074905815e4ec5a3e64b8a2097a099513a28e27310e45b73fc0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.14-154939-7deee1a/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7e6854a8d7d1ea04f414c2cbd228fd6e2d5fe67eb99b75dc5e81d4f236649f7d"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.14-154939-7deee1a/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cdd9e4d0ad03f19faf0395789c1a08ac1d090e3dd1b2ccef83d7caaf0196c75d"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
