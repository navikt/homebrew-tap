class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.09.29-105335-ce50857"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.29-105335-ce50857/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "80e948c5fc969c7f60d317666b65f210b509abece6dfcbccf212453cff021d48"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.29-105335-ce50857/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "78e5b408b65759affe99906bd1fd495c5c21127bfca05917251ab0c980a23343"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.29-105335-ce50857/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "31ef6c0bb0ef4417371ecae77394fd050edfe73a9fe8e199c0f073e63cd252b6"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.29-105335-ce50857/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b200b51f26e2fc442017cdf7a0566ea584287103d5ab4066a1a33b385f0f821c"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
