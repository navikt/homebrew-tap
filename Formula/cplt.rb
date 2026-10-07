class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.10.07-103638-7c04fce"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.07-103638-7c04fce/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "f8796297c36c304390bec4bd78ad3c84a106b09349077fa522e924241ea5a0a4"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.07-103638-7c04fce/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "72b1064d6625dafae1dfe33c8e440bdd80cd8be5a8aeb2728a436fc347f3e020"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.07-103638-7c04fce/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "194d730e51edec280a2b39d5c6f57d38be41b22c03784f400b01679c0c6a7f38"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.07-103638-7c04fce/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1ae5d2d31b279678a935e1ad910af3240ba9d6d1e88fb834db17764c7e7f1544"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
