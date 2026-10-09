class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.10.09-111505-c5c8b87"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.09-111505-c5c8b87/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "438db48fc0735b0b2a4fa1088e4e5b2713e4e0e20c70c75d0a1b44f201759a29"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.09-111505-c5c8b87/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "1a615342d0914db917adaf1e45f32a307941bf9ec104aca1d8a1ec065b20e09f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.09-111505-c5c8b87/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5f7986decd9fe1304d09fc6a632e452357353b3c4c0a83c272bb0bc0fae8d9a4"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.09-111505-c5c8b87/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "795b099755ce46f1e25f52437e54612e9a8cd9133250333f2260a2dca7d78de6"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
