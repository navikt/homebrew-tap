class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.10.22-182328-1000391"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.22-182328-1000391/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "1b4084aa584da1cd08960506c50c9916c21270a655d720ae9d9e7d2484a72148"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.22-182328-1000391/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "de9d602459e3c169f543a0b3a0f798c91383cb6796c027f3ccef9d18f96916c5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.22-182328-1000391/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fafbccf6dc168c0f2881de6de31b5eb762722ee39991fa1370ffb14a5e900a04"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.22-182328-1000391/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "48c269302805304f63000b0cb6638ebec3c5152c728bc73a1187968c8097e2e1"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
