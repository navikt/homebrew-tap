class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.09.10-080458-b3b4994"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.10-080458-b3b4994/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "c8f7c677bffb737e803351c06942ffdc497eaf160bc457f00e8cb6a1b23337c1"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.10-080458-b3b4994/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "d43e290d207be06f906d1112868bb4c2da6719e6513031dca870cd599d9e0f36"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.10-080458-b3b4994/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "921e693ac8e6ae0af5920b412f7670a967d3487491d7cf7d880235e56dc2343f"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.10-080458-b3b4994/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "66bbccf572a9e8f8e2886d639983aa0d9035d1fac691b133bd2fd4808e54a612"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
