class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.09.06-064821-0466f2d"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.06-064821-0466f2d/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "682a5aa3f7fd32d7b0563062359580668e4ccafdd3fb4ca8edec99c38b8890c5"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.06-064821-0466f2d/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "b5d3277d700504d1c35e2e3b5cfd9f1c03766e80f3ac1558f79022b03b55e2d4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.06-064821-0466f2d/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "58b55dffbd92b8b61cdff1358da8a7fea1ab880d47d998794ad305a17b83d846"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.06-064821-0466f2d/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f2f14f0e0f2ec6e6954f511d0170aaee80df46c7e5f8e7c22fecb5564254ecc3"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
