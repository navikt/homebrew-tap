class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.09.05-203953-2295341"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.05-203953-2295341/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "f9fe505ef0c83a31891be8c0b02c262f80e511549ac6dc0de8d424a1c73810dd"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.05-203953-2295341/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "7d23f02676b4c1d6dd1cb0cd51611915b3e18fb5eab1b71e1b50de44bcf23c19"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.05-203953-2295341/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8c22d0b4bd531d2deca89d79048eb22c0d6c8113e5578099ad260238750bc7e6"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.05-203953-2295341/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "47f60ca1014502fe65d07e0b3e5224bf2ae12c37b5c7e4af435a46c586e618d5"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
