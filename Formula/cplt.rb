class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.09.10-154222-bba0e20"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.10-154222-bba0e20/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "79a1bb234cd8e90f3d98513c212882efa5db89905cb7c09dfd84e78a6490578e"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.10-154222-bba0e20/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "714e6b725c7cd0a0e25a70fc1400e6007a656e7818474771da3856ec128b9057"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.10-154222-bba0e20/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c76f25d6ab63cfe9120c22648a9fb97d027a2bdc4dc46c91069bb5213a5b0771"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.10-154222-bba0e20/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a56e892298938970c3bf45a22e0d6d1d7d7c2d15c91c133b2b771554ec5a20c8"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
