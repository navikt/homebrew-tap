class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.09.08-090806-e2ff554"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.08-090806-e2ff554/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "13b97fece3bd10290cb600e45bde789cd5bad614f46b9a9a0d8285dc04fefb1d"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.08-090806-e2ff554/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "b44cd29d9f4509ff02b890c062d83e1a06bbe43abb3c3d015864dabc2f17dfc9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.08-090806-e2ff554/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "afe54a91d63c6d97fed43260446f1407c6d6ec50f72af3b750f63793fc9f92b8"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.08-090806-e2ff554/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4745de7b4259ee6a958c502fa5c79b9c8d9c7493f383cdc8deb598ef6c5c5b5d"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
