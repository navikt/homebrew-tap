class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.11.05-170028-63b7f8b"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.05-170028-63b7f8b/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "280cf11998f194bd9662245240802caad616ff7a53ce7447a761e004b80e6e26"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.05-170028-63b7f8b/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "23bd975b8f3213a21c1d00fa495732128ba26515fdddf20709dfb36fe562b849"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.05-170028-63b7f8b/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5bf71552866828174641523f10ce7715df94cd0978933285509ff7894d2a0519"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.05-170028-63b7f8b/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "aaa2723fd7b1c9645276fcede677f4eb68e7046516736854d8eab386c72aaf6a"
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
