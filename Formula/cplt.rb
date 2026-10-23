class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.10.23-081129-02bebb3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.23-081129-02bebb3/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "5e111553fa773bfb28a099be47ec5fa4d0ebe226ed05f78e55298812ce501c36"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.23-081129-02bebb3/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "6b436e6ea7de5114d70966a62d3a61b9992eca6b6e175e475fbf2fce7b0cd654"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.23-081129-02bebb3/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ade50693e3be133ebb48482ad16d9b4ead266ded534a608ef53d1ad19dbf9a37"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.23-081129-02bebb3/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9eb201a0325c7615d469f067ed52591c0995bc810a7c8ac027ade54511289140"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
