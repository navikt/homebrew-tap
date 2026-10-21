class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.10.21-101049-3b2c077"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.21-101049-3b2c077/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "98042b3e8c98770bb2debbd106cec440f5b9f56f44c2697971d5e56e23985912"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.21-101049-3b2c077/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "d2b3f6b25902f6e73fb1cd2ab09fa1153e5d30941eaf4106de686bae41d9de19"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.21-101049-3b2c077/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "54db0908143c9e5cdd6b4ae6b2818cbdbb0a775a9cf75cf8ec4ea74fad2fd1db"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.21-101049-3b2c077/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ca00d56bbc6ca8b3df63aeaad5ef0eb1ba3ae6bf99904ee714b08deeec1f5a29"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
