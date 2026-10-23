class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.10.23-212121-09f596e"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.23-212121-09f596e/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "241fd51cf442e8c53a360507e54851da0c0310157e26da057d408fd04ce5eea2"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.23-212121-09f596e/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "1ef40c1b9f75dafe223524a9d72c36eb585fa7157acf65f1a551f87ec777129e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.23-212121-09f596e/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2a9e9a6a51935f9c398ad4ae856a8eb9ed7548fb52969c6a4bc5cc07a2260b78"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.23-212121-09f596e/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "326f8c10b9b8d1bbb393429ec408901859c4633fc033e561185e2d435f4cd6b4"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
