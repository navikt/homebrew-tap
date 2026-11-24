class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.11.24-080123-6b24b3b"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.24-080123-6b24b3b/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "30b85155f4ecda939882540a69c604b635ffbb091ca0481cdce87cf63c48f6ae"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.24-080123-6b24b3b/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "c33fde5b67018d2e0bb81e6338174d4087286a377c14941c18881364ac431d14"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.24-080123-6b24b3b/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "82bbe720f943444a622b90d227e8b4b3fed71b3dfc8b27f8a9156231a3253484"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.24-080123-6b24b3b/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a44c4832630c068e2044202f57b99b5f30327979334bca003b3cd6e06d7f62f7"
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
