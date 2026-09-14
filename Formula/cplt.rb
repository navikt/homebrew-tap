class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.09.14-105131-446dfbb"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.14-105131-446dfbb/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "e22d169314d216813fb7cf915cbf5a35de2410cc38bc8366300c39b30333ccff"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.14-105131-446dfbb/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "88248740107e03fd819c2acdea870e3c41ef29f19c3ef645af2e860e0e8a9098"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.14-105131-446dfbb/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "94f1e9b1bbcdff545366dceb11411b4e311a21005a445220283a29cb9ab0f571"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.14-105131-446dfbb/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5384fa33964f730c23b21525bb7148a05811a8368ffffb1ea10b3746866567c6"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
