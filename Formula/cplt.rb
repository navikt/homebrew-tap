class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.09.28-155740-0014b78"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.28-155740-0014b78/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "1fb1ffad8767899b930758148d2c19c0b0424603675b9fbc57279361a4ef5977"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.28-155740-0014b78/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "8bcbd395487106451e412bf60534988241440716d41563881c0a8bf4664443bd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.28-155740-0014b78/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fcbc24df4e4d725f07fc3378e06d99218284f40a5a8bb104c15afeb5133b6386"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.28-155740-0014b78/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5b1ca52153d3fd81131e553a6aacf626e337c91745c666531e12db81bd3ab766"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
