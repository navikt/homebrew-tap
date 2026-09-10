class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.09.10-113819-a7f1b99"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.10-113819-a7f1b99/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "1fffa93ba37dcb30ae2819056cd703a5549b4a1e23824c233d20ba03cb11eb54"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.10-113819-a7f1b99/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "8b9fbd30c390b69c8708bd4982b4daffc2ac97b2ec0d06ac4be1aa4d397978f0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.10-113819-a7f1b99/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0b09fbf6943124671364f6082235ffd37eb4ff8861a04ac7d47daf3095dfc0f3"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.10-113819-a7f1b99/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "31b00b6e20b58105143b83d164b584ac99a96d788d79b81b21109943e692bc16"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
