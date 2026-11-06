class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.11.06-074203-2265661"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.06-074203-2265661/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "0bc0df7a0f1995476665dda84089fbb762fe25e5cd80744d81f050a895c5331a"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.06-074203-2265661/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "0c516774c67e8fc3eab3dfb1da59ce8b421279e493b95cd7b847ae2a335497d8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.06-074203-2265661/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ff549009be73f27d4e3cf147b3e5bb59c573576cba9aad4da0d1245a1a935ce2"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.06-074203-2265661/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7f6737d9631ef501b5751b41c1cf0cb227ca87e16ef0bb0bfe203d67906bd603"
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
