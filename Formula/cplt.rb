class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.09.18-075439-d2cb6c9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.18-075439-d2cb6c9/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "987b967b405d5b39d6359aacc9d9c2142b3f13959d43d619390523acb165fa4a"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.18-075439-d2cb6c9/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "e3efd08cac25755e0d1c46f6678368c69f2d9063f389abfb5277a6f167116ae1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.18-075439-d2cb6c9/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "43249070764fef7047317052650d6945bcbdf127a40c31b90a2c3396e594e037"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.18-075439-d2cb6c9/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7ed3b9195493bd6f99032cb7914ed73d2722758694b53fa63e2d000e9ebf63c5"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
