class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.10.26-104125-0c2b9c0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.26-104125-0c2b9c0/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "d27d551437e077256cbbd11a7cf954b533d81346962562ef67a14d92e2fa6d90"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.26-104125-0c2b9c0/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "50ae5495c80372bfcd24e99f205749f225b193463c16e92c529fddec31964fd2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.26-104125-0c2b9c0/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "bc558299287beeca81208ea86d2b3bd0630766c4c2aa2f886f740be61954cfe6"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.26-104125-0c2b9c0/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b3a2533621eaa677d0783c456ba6db1b5429fe2a86fbd0f6b3e7a4f7bf7686af"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
