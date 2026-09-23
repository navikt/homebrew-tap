class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.09.23-093203-a72697b"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.23-093203-a72697b/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "6061478b8fdfb08ce8dcf8ba2fa0069d02cb9d8b78e41cb77640c257b5b366c8"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.23-093203-a72697b/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "453808c7557b84fdf4926eea797ad6a9ca52a58a961e12950be7ec6aaf7da306"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.23-093203-a72697b/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3cecbf555be8f10a9e8dc5233688689736fa24b69e21993b182977d83a171720"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.23-093203-a72697b/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "937f51b370b1e4481c7d90e6511b7acce989e1595d6dcdb61ba54f0b630ec408"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
