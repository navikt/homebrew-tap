class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.09.08-194127-5b12088"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.08-194127-5b12088/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "4a9733cd6f7de566debaefd9bd342b76733ab3affddddeba1a41ffbfef68eed8"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.08-194127-5b12088/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "001741537fb1009908c2861fab48ab5286f439626ce9daf4a19814352dc17505"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.08-194127-5b12088/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b48b084427b577d27ce87c9d5d282f5d3b1ce6102d19fb80985aa219afd91a6d"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.08-194127-5b12088/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "124568599b5fcdec8a169c95ac3e6c4b53ecbea7faf56ac91a519067ce996bdb"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
