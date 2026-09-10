class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.09.10-082215-a91f636"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.10-082215-a91f636/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "2c40f4d2ac86fe74dd12021c944612345e89b7bc17f8ff6775b36c3b5166c89b"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.10-082215-a91f636/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "d8b3e4bf083ec9dabf1298e4ce81116f4e6943f5ee956641f45d416e9b140f8c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.10-082215-a91f636/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e127d4d02bd37472093fa9f4a1d2ecdbefdd479267c0409ddbe8a5bea52bbdd7"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.10-082215-a91f636/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "440db89fd66d6ca968c7b7f4369bf43f2247c6fbe75c13f9cd35ca889f8b5c30"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
