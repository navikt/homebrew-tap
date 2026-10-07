class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.10.07-085513-b4bb0ad"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.07-085513-b4bb0ad/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "1f8c90665b5bc1cf1df56a7583b83bfc5bc8280c12ffc6c82ffac8ccf0183588"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.07-085513-b4bb0ad/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "920f2da978b1aae3fccbe21a4f0ed6fa25cadd66a9409ce6978ea445d032b596"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.07-085513-b4bb0ad/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7274dedd43f7a3d96fc3159932fb016000fc316a73887a0f26629de6c1631040"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.07-085513-b4bb0ad/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "be2d7fdd9b2e6921f4d959657d40e29710f8ab44f6a94381ac2754253f166c3c"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
