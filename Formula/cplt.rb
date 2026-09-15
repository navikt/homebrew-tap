class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.09.15-143904-77f4321"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.15-143904-77f4321/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "bfd7dbfed5a9babaf24cb61cc983b52dbb04667cc5c97d1bb4aaad8f7e44e9ad"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.15-143904-77f4321/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "f14e6b08316c879c94228e528a1a14dddc12fa021b6f8375520ef92a06ce7cf6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.15-143904-77f4321/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9c3c540deecffdc0ffa62364702cb5653872a173d01b70e3d22c1c48f7a4e87c"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.15-143904-77f4321/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d15b7ad1794e2349664fc12561ee4876da22747d34f51d2a17eef12adf5a135b"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
