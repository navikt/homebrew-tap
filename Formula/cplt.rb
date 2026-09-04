class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.09.04-125413-a22aa09"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.04-125413-a22aa09/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "b296ef954e8974d1f3130392e861397fcded4ac7ce979b710a0bf6803de6e5ad"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.04-125413-a22aa09/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "fd746cd4bf948d2ba55057b46717fb251645cc2293912ff23bcd431aa453d477"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.04-125413-a22aa09/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "69164a8aa5f05fdcfd66bd257a8b80ea6fe604ac13931d9598a3064376ffd6bf"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.04-125413-a22aa09/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f752e71204b250779bc6375b395554d977cebc6c567f36d3b5d229642166cb24"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
