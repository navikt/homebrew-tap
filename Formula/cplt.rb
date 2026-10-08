class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.10.08-060626-86f0f7e"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.08-060626-86f0f7e/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "c69c5b2c6e292837e2b603532192bc68dd57edb7486a2d41869fd65935d89b9e"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.08-060626-86f0f7e/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "d2bb2329eb7ff48c1d1d8897c8d8500f3a756c2b1278fa89c08ced89e3222399"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.08-060626-86f0f7e/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "edfefc8b846f5f84760b6da524927fd90681c846cc8096e8e533a3538e7b720e"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.08-060626-86f0f7e/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d437a22377f26d6e61e7ef9339e9bc31cf8b068539e52e6ba5898305f509cab3"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
