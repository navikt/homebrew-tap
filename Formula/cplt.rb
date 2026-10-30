class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.10.30-092659-455cbe3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.30-092659-455cbe3/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "5799ae2f1bf1380c9129dfd9a62dc5c60aeb94ebeb93d7a0e64d133fa9677d76"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.30-092659-455cbe3/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "0ccdc63e6d1bedd49c0bda281a9a189ea68e6d41dd345144aa0a903c79e35ab5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.30-092659-455cbe3/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "034463cbdd883d251ad58d0faea9f577a9397afd87e6515e878c7f701761feac"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.30-092659-455cbe3/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e56a3926dce247f27ac6145c02e8bc42ffeac26ac52c194244601d4f82563cdf"
    end
  end

  def install
    bin.install "cplt"
  end

  def caveats
    <<~EOS
      No cplt config yet? Run this to get the recommended defaults:
        cplt config init
    EOS
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
