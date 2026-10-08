class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.10.08-092800-5050c9a"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.08-092800-5050c9a/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "81d9915289fbb94b83841fa8521e6f2f9b6093f2b1775a0eb6b973da61270879"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.08-092800-5050c9a/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "d204d08aa099c255c4d6e450d5294c6f24d63c6b5733d6c509095fc7b0fb028a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.08-092800-5050c9a/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "83049e339a6c4bdef0c8bf367d8002d8017bcff2be2a7e067f2cc8839d34ac1c"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.08-092800-5050c9a/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cfdde4c50b0eee86c0e641e40990e2ac52cb37e1e73275f7c9a5208d2fb5db0f"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
