class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.10.06-123023-956395c"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.06-123023-956395c/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "28a2a889a4df19b03342bf1d6c0e119235402af55a1f24d84bae6f8b9f9d73f9"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.06-123023-956395c/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "db91d561e1c0e46f07d21989af4f70b76262e508d5fc4844e78fe7877047a40d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.06-123023-956395c/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ecbfe6ba9505c8a7bc58deeccdb90d0f93f1206775a96ec97ad0782e7ab30cba"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.06-123023-956395c/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c4833434e14b092142e66cd55bd5903483a14e9527b06f43e4e234734ec27ce1"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
