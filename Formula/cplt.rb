class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.11.23-195628-9ef3d81"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.23-195628-9ef3d81/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "885a05aec3e7b6639aeb6cc0019a5c355779a0554fe1292da680a13998757338"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.23-195628-9ef3d81/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "0a6f9643c63641969505c364850a0164c6f85ca2f35baa933bc7b68de14cd25e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.23-195628-9ef3d81/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d29e6111f28b4735e56eeabf39d56147c1b7867c169c2be46d39e29bf2593746"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.23-195628-9ef3d81/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "66574870f3894e97c056e643b3580b35e00996ee0ec101030236c5137987fe3a"
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
