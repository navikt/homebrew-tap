class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.09.24-182345-8118432"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.24-182345-8118432/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "291d3b97abe9f0637a07534fac9e4b6f3278fa89b5b37650a374f7c952388a95"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.24-182345-8118432/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "159dc17280471147e99891b6ddde764d854c417e342df7c3b12aa0f61d8c272a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.24-182345-8118432/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5ea4655e1528c6aa8411b545ac4fb1109d6fc889869c80c93644a5fa78dbe578"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.24-182345-8118432/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "de1a0fb43bd5b218bcfc355c7cdb38c207d28ca20b9d04a8bbcccd5051374258"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
