class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.10.27-063119-bd7fa63"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.27-063119-bd7fa63/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "3072c16655d336d128a3385c957cb761c09e5fdfedd6b85d6374730b71e4f4fa"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.27-063119-bd7fa63/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "09ea03b22596298171f9c3fe331695db3e75fe10ddef46560816c9d798f54c6f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.27-063119-bd7fa63/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9c5fb65d52ee6746b26dffb9bf5db552b08565f7d2174b29ae08328bc3fc6367"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.27-063119-bd7fa63/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6a1e0bb716a1259e57125b9bccfa970c1063fca559ef9254bc9622db13d68c74"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
