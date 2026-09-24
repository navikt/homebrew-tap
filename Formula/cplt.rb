class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.09.24-150036-a8d357c"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.24-150036-a8d357c/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "0978974e9d0d894d52a6d9266529d3bfb91bce9d865cb6a97e4bd8202bf29b70"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.24-150036-a8d357c/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "2195121df65e6c87fc974c964ba22c43ef969fb8c70003e32f089f8e79bfacb4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.24-150036-a8d357c/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4f176b63ae7ba81ee66996eb8b7e1e150f0e801f7465a62e83bb2528f788a30e"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.24-150036-a8d357c/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d95c7b43e8b1467ca1ed6cd5af991fcec69c9d455afc0f1c562ff49dd7cfcdb5"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
