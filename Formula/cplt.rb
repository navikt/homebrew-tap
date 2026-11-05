class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.11.05-112630-c49dd7a"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.05-112630-c49dd7a/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "d91458ac95d852c45ae069a103e9d37060311ce906ba9a4b22e2febe1861c831"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.05-112630-c49dd7a/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "b92244abecd349d592cf429c8af167977e76fd1ac2ee57f3c6e4ea2419805481"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.05-112630-c49dd7a/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "99c31534309e1c53c1043ca5058880b9ba10a710d2b578becec51d4279959a33"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.05-112630-c49dd7a/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3c5984e425d9c7dee2fd1940e183a4673737d41ce76ea0910713c14894a16183"
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
