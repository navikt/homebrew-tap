class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.10.24-160000-c742e86"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.24-160000-c742e86/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "3e57b24547b06111521d5fe2bc97ccb86373d7684c94b255c64f1045cc997514"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.24-160000-c742e86/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "0ab0ca8e8b64b4678688543cf49e0bee57bd06216c9ab3d4b41fe25edd70fb81"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.24-160000-c742e86/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f86b1ce081427470b7922d86b9991930da0578b2d4335eae2cabc12ee9181110"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.24-160000-c742e86/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3dfe6bcbbee2eb07c814a98ac7331400c2054412dfb6980a5292478a09df3e76"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
