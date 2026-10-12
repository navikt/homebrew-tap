class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.10.12-204704-eaf4870"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.12-204704-eaf4870/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "07f1a4d8675858ce5b46fe2d04cd9a0a45577f6cd86a88db1d3747ae6ffc05be"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.12-204704-eaf4870/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "2eb609bb3a845eb1e752dd291b786daed67e6a0030fbc9103f0bad7002d273ec"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.12-204704-eaf4870/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f0ca80aad6360b4fd74f99c748db5a989374aeff583006e7ddee55ecf6422ed8"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.12-204704-eaf4870/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "92c5cdde409f32e76ca92de60eef3f133201e6fa6a627d205f7f8e975f223eb2"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
