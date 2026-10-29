class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.10.29-130225-8a38a48"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.29-130225-8a38a48/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "dbb9debc458becf9bf4fd526ce28c8c046402b41c88dc0710a3aabc4c8a5a03d"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.29-130225-8a38a48/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "1a1aa91be9ca094d1c9948324e53e3641f75cd679856117e95ca9ed687619566"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.29-130225-8a38a48/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "01ea72b0f88b54f83d842cc3f193b902422a1100bd70cc992042d558d1704efa"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.29-130225-8a38a48/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3c02196eed919e089199af7f9b1c918a56152f736b58c7b870cd3360d790033b"
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
