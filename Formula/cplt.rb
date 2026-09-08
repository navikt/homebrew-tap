class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.09.08-122440-78ce9d0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.08-122440-78ce9d0/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "2b1e02db5f3d298ebb192810ea703ea3d087d1cf9a2dcdbec31549b8692a212c"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.08-122440-78ce9d0/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "f9f4bd56322525d764f601e04ae0c95fba6828ce6b0d39ba95e4dd91a0e85748"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.08-122440-78ce9d0/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "66617795d5748d499954fa1839dd693396234b35700f8a6e46d59a64c92c20bf"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.08-122440-78ce9d0/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "694d80440c680b3b8c4bd159a61b577fd568b3f9151a679d75631d99031402ff"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
