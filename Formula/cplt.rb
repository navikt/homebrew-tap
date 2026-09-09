class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.09.09-070024-9300723"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.09-070024-9300723/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "153a65f2d65503c5d735972b66afa74a5d436be64811512eefa1c45826627375"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.09-070024-9300723/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "f1a3466e8a084a624111fbaa2418ba446a68e6f36b0412b3135b918c3b5c109d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.09-070024-9300723/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0e856c116fbcef6f7d6859a7a8ebeabc4c626e42a96188d22e574a327da376f4"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.09-070024-9300723/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1ff2528c7bb54a7ecb4353438c2370332acf1bf38e8fbeed98e86ad2ba1ad284"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
