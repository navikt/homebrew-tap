class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.11.24-163056-57898c7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.24-163056-57898c7/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "a59ae4bb02fb3acb7e8780861da9cbc7aee7f7d44ecf2f03c27c52fb1371ede5"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.24-163056-57898c7/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "64f7c2cba6d6b89de2a92e1b87ac4a0364a208353119ef49eb09406124431d82"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.24-163056-57898c7/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ffcfe1bbe5a00df4710aac1fa98cfa089ca00bcbc26dbe2d18e063a5d554df08"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.24-163056-57898c7/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c18ea822a6a4601f7a54996c130b59c2f161eb8c16b7433f62a6e9768b7c00f0"
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
