class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.09.04-170204-ea9149c"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.04-170204-ea9149c/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "2384fc54a0f81ade4ccd0869c68ebb64c6af0e57e6005a3e1c06e7456e9b01a6"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.04-170204-ea9149c/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "931735c4e7e7d16e83d57ab67f04d65b55f9e928b2303eaef99753ce163e1fce"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.04-170204-ea9149c/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "bb2ae38ca6a449ffbcacf6d7134803dab052661caba11a8ba09a975f8f99e1c5"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.04-170204-ea9149c/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "152c3ecb161f4d55665b42c6ad0e733afb1a8e02c2282b8f87118dede0e31a4e"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
