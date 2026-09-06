class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.09.06-082853-ce62f19"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.06-082853-ce62f19/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "abc631f13675a7a55deee633056103fb95ced3f2009ff822c240ae35763eac82"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.06-082853-ce62f19/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "abf54600b96971c0573c7765ae463efdc778de33d1722c831d6512fa381ac6ab"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.06-082853-ce62f19/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ae51e7795664e3c6e29212b8eccc0a4f9619eaba0d8cae2d7bbe29380cae13d0"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.06-082853-ce62f19/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c691dd1bffc407302cf9a0514b015004d29a4587f9582b7a8730d52605b0f7ce"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
