class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.09.09-094120-b7fb4bc"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.09-094120-b7fb4bc/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "2788f417c43a053940b894bc0ffbb7829991e0b8bd98ba2cc77218242cc4db76"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.09-094120-b7fb4bc/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "811c61e14c825d1a6a538ec1a7cf1b1737a3261987b46bdbb95e85e4619c9f9b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.09-094120-b7fb4bc/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "939df35acf68a040dbf52aad0f03eb64eaf8bf0ee4a9803ac46dea351d380f9d"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.09-094120-b7fb4bc/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "28fe75f0c8fc81f64fb134768151842aad0435b21ed479d5fac11be2a6e51736"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
