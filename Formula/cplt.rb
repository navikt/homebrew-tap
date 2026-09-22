class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.09.22-221754-0bb3a6a"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.22-221754-0bb3a6a/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "90f878c769337a38f3e6b9663c5c3f6bdf02b0adbf728d601c4c3d5277565347"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.22-221754-0bb3a6a/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "b7f7df375746f47274663f6dbe965d9be0378f065539da7df6f9728f5508ce6d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.22-221754-0bb3a6a/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c5140f25663d027d513369cbd85d16d8496f68bc3704df400903853b8a487f1e"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.22-221754-0bb3a6a/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ab21e574117c4eb7026f24085b78a0ad999cbd3c7a11cc8ead52041683ecdb42"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
