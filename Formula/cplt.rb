class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.10.15-150759-70df05a"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.15-150759-70df05a/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "851f69f756414a36fd4f3c04332325163a2c03ce1cbdb669474db326b3295dd9"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.15-150759-70df05a/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "353407bef1820b58a403e62a5b024c81bb3051f6eef8772b4a94da0c6c0a511f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.15-150759-70df05a/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3f0b0063889e382815a0e7606edaaac3b906660fcf9da1e503492ce57bc99ae8"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.15-150759-70df05a/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f99b03128f25ed63a3b71413cf76e99475d5fdd974728d26c824ca74757a9ea6"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
