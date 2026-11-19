class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.11.19-131455-df06bf4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.19-131455-df06bf4/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "73af672aaa148a43cdfda69c78b307e4875ab55e3a46cd0711eb8daa76298117"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.19-131455-df06bf4/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "36c0d8485c3b5d86f10012741506771e84917dad620d6225e8dd0e6a9d03b7ae"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.19-131455-df06bf4/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d57b2a3eae79b7e215cbf7c1d8d39797c3805afaad37381c012696c2a09137c2"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.19-131455-df06bf4/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d36e874c2feac26bd64ca5b5d906e19a0273c72e102374ba94f3f88121ce6289"
    end
  end

  def install
    bin.install "cplt"
  end

  def caveats
    <<~EOS
      No cplt config yet? Run this to get the recommended defaults:
        cplt config init
    EOS
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
