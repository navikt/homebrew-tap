class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.09.29-165327-e97ce16"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.29-165327-e97ce16/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "10cd95d88a8e17b2be0c76c3b822e925dfe04f66ec5ec35095bcf120f66b5475"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.29-165327-e97ce16/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "af2e657e438d27b738f4d1c34d567cde5e01426985e2be9be2baded5b99221d4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.29-165327-e97ce16/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b3041db8383e3933ee67a9cb4cbdd5accb1cff5452e18c54583b07de76060861"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.29-165327-e97ce16/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "78908c994fa9a2ad79ec00156ebdd19d779f7fcdaf3e447865e7df9380114287"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
