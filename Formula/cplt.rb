class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.09.08-181659-70cecc5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.08-181659-70cecc5/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "0272e7da18acf38d2dc7b868b50ea93b8aef09bff6dd52bee35e4f2841f13d33"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.08-181659-70cecc5/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "dd701f63a03ec1e2a0324c4149b9177a5dec45b4806a0163036d41e9be121f44"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.08-181659-70cecc5/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "eece5b6c7a7e4e27343bf3deade7036347a301285ce0b05494bf9202f6fed9c4"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.08-181659-70cecc5/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "005fce44c0e29be58e6c8d2dacc554669c5de599fcfaf84ca3a1ce25293ead4a"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
