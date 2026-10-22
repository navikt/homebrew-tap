class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.10.22-230145-627d3ae"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.22-230145-627d3ae/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "45d269d5b6aa9d6d6a729c8ba088def4a8d4655a2808030ee88f092e4fc2965b"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.22-230145-627d3ae/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "0015ed73b0c9e1b264254439e263d1ab410c5b02f0f988c30d17cd88756ea439"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.22-230145-627d3ae/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ddad1f0454e09738bc735535d68035f2a370c11ae5160b9ecc9b3c52cbc2a8f7"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.22-230145-627d3ae/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8d796724cef76b7c1b27c7e3bba1759c2bdf59d308a11c2dc0fad97e0f87d787"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
