class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.09.10-101051-153bcbb"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.10-101051-153bcbb/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "7b7532d66e1e7086f8cc8aa19e78674e4f1112d14ca9afa199e06ab97d303564"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.10-101051-153bcbb/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "05fdde50f1576d061ec44889134d91dd3b7b11a7f9f7c593116f596a9c13ffb8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.10-101051-153bcbb/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "19ebf538d82d8b98ef69002944c4f70abe5170f237bcfe5a810f77154ccdbb04"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.10-101051-153bcbb/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "af557f702f24f43f43770b3f9891ff5a376fbb0050b7eebda137672b0045c6af"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
