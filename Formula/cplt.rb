class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.09.29-235246-5ebb253"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.29-235246-5ebb253/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "a128472d49097cb65d1400bb8bd1c630512a0090e58a0fd2133991c553668782"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.29-235246-5ebb253/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "20e4444a4f3e435579d9e77a40688d128ef4d0ff9a523a5068ac96ca62beebe8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.29-235246-5ebb253/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8877baa100bd207f1a67ee1bde38760c1ca295714be14b5b130d12b7e0d508c1"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.29-235246-5ebb253/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f21461739b74b4df496203a540e9596e255014e2585365aa9e2e420ff91cf73a"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
