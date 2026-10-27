class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.10.27-060702-f3fde2f"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.27-060702-f3fde2f/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "7973c213aaca55c0c5e6eadd173d7e8652fdb1f5435ec887a19da7a2336aeea0"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.27-060702-f3fde2f/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "ca8e2e5db3ff5d25eebe51f7e9afd6156739df1b6a66dfea70dcebf3d995184a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.27-060702-f3fde2f/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "870e4073742aea085b84ad5954322cca3a3ce7e56b88afb9881f274527087394"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.27-060702-f3fde2f/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b7d3e1f861903c4626431a063b7993b4a39cfa7fbd648352e46dcd2620cd24c7"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
