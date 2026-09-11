class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.09.11-080910-247d56b"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.11-080910-247d56b/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "e0c9b655a10f704b5ca641c48163e0bef81ecf900a7b3be4ba73b6659698a811"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.11-080910-247d56b/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "287364bbad1683cf180b0a406cd3556c4f1eb2e8aaacf18d3585100f1f85d757"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.11-080910-247d56b/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f12abec87fbdf46f274753d0f3453ea7c4c3ba72967064e961486fcbb533a9a1"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.11-080910-247d56b/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c28d28db6953b63cfd34a585a46fd8d990a4deb36ee27c6c86000f66237326e9"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
