class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.10.02-094351-a7d1983"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.02-094351-a7d1983/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "723816604bca5122d2399262705ccc97f1dcf918144c2b83d34c7621241862f1"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.02-094351-a7d1983/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "3e69460cb615c3eae3685855e2b57c741edeb52b33a79090343bf7cb7de01bf5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.02-094351-a7d1983/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7a7270e7875ff02ddb478c6e86051de9cefaae7112eb3103d0509aa237c8fb94"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.02-094351-a7d1983/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "696085548217f0211a2d0ac26927b406336a2fd1a9a79265271442c2c7c5fe47"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
