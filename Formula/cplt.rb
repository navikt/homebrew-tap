class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.09.29-193225-9780953"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.29-193225-9780953/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "065ba21a1d75cc23826ca16b96cd4670956ee9d229f23f8951c276be505b3bfd"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.29-193225-9780953/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "20f1ef83a47c0b6b8241ad26a6e6039ea1b46e24e3c58c0f4c684b73a5809a31"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.29-193225-9780953/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "965030eec79bc601c604cc8228d0cc58f5ee56e878460aa86678176776269191"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.29-193225-9780953/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7785fbeb203f4708d4a21a2f453190807e557c91ed5ec09e93d85534f28385fd"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
