class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.11.24-102148-27e7fbf"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.24-102148-27e7fbf/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "1264476e50425494624f4f9d064813a78143cadc3f8c44ce5089ed1f5967b61e"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.24-102148-27e7fbf/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "ae74fe9709dc40c550966135b79b732f6be986e3f99a8fb981946fcfcff120d7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.24-102148-27e7fbf/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1aff220e7d18017ca3d58438827ed9cce6c8727acd942cc9b25638dfd7b53a7f"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.24-102148-27e7fbf/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "98c139c5062f04cd740a4a2be87a6249960e964139cb4e2bf44eac55fece1f0b"
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
