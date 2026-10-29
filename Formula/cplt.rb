class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.10.29-074037-8591fbd"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.29-074037-8591fbd/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "5c963c7695e949a9217dd2bb26b51546079702d4bab37b2933b4328084cfc7cd"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.29-074037-8591fbd/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "138358a3efac8aacc24944079932d8c5a27bbdc38f4ab010c977efe38cff7771"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.29-074037-8591fbd/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e1b5dd6a7f66a8fcd0e5f5667b3ae452aaa7ce0ccbfc0fbce73b4f76d06a4777"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.29-074037-8591fbd/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "685d8b92b038645e642e407eab16b5fd579cdb7ada2c063440fc17c50485148b"
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
