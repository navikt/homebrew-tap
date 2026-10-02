class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.10.02-154415-2d36c66"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.02-154415-2d36c66/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "71f2aecc47a76b04afe9a39925edf298815d5199785cd01ac417edda2e41d293"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.02-154415-2d36c66/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "df2820e28a22be4509dbcec92e756a32fec7ef4122240b71b2b04bd335c11a29"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.02-154415-2d36c66/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "48ee1488769b5855fe7bd9623511edefb3be752e88f91b6ea13046fb384cff43"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.02-154415-2d36c66/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ec7bcf123c47f03d45fe058c1dd4a271eb1db19d611ac7d3c64baae946052e29"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
