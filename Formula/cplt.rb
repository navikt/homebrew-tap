class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.10.22-215825-0709f0d"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.22-215825-0709f0d/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "17f384069a44165573e5dc2ff15f18de5cda22981034b830a4fed27564138fe8"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.22-215825-0709f0d/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "8440a984dc1e991e3e8231d82130f106b4b135024a817628c8d4ac5a2ca8b3fe"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.22-215825-0709f0d/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "96bb6254d13841315ecd901effe32f2b7e51afdce40f4e1d6e8fbbe5a6901d3d"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.22-215825-0709f0d/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6c26cbfec4c277deb9e05b816428fe47aad039d54bb5b7ada10ee8e240a7082a"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
