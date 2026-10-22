class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.10.22-140206-df61740"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.22-140206-df61740/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "be4821643b53da0a090022c85a76014543591b7e8c4f9b7fdaf97931dec6d335"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.22-140206-df61740/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "a8375984a3d9e86dcc6a3f9e4af1aa6695bf21a4f0b3b30ea868d15f45412888"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.22-140206-df61740/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1ac23b84602420697cbe3e05663a5445583fd2dd27b49f19c520e1618cf89140"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.22-140206-df61740/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c3c1a3ebee1ecc0a09ca4e2deb5832136e43f134d065c3cd63bd3598e3bf5883"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
