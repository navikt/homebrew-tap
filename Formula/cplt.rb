class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.09.29-180031-b53a611"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.29-180031-b53a611/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "a778ff0cc640e9e06b4847e84440753f11e58564b7c310a5412fcefb41b1240d"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.29-180031-b53a611/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "5fb37e1735dd591bb6ec57b7e383d5921d306b65e0afaefa755d049d4ed9cf63"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.29-180031-b53a611/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9809ca7867560c62654daa25f02dcd387a8f399f283e206a7ac616d7787fb727"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.29-180031-b53a611/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "db83cf74e6ba22bc701635a6da01ff32947b4bd8e7fec717389a9d063051ba38"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
