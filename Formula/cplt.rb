class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.10.29-095425-220eb79"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.29-095425-220eb79/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "8a7e8e595d9386cbb5a188babc86f8aa8e0a88dc90bd699209895eb25987e5ed"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.29-095425-220eb79/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "dc9c551955e1e53f9f12e3f4dbb99fc95cdd5329eba6402f681b2d19590af493"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.29-095425-220eb79/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c469e02762aca3ac117c5513fec2fca555cc91c41ca05c27791d06cae2135b83"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.29-095425-220eb79/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "afa8d2e7b9930a8a9fa3a1bde98d496c7a457614ab40cedbc07a6726b62c1690"
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
