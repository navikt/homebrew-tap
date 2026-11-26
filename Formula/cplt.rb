class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.11.26-145727-a1ebd5c"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.26-145727-a1ebd5c/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "ab3df5b8bd717c758a2b07e5e3cf6a0bee4b30a255b2ae571341bc29d5cbf901"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.26-145727-a1ebd5c/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "747606917bd07d57cf26e7213a39a92e9d305342fce34e0245506ee06710cba9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.26-145727-a1ebd5c/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e60c84d8f7ae55ff6420d6b7a0d3bdc1824c0307a322957247e69dca085fedd8"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.26-145727-a1ebd5c/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "71bd27bfe99214ae3135355cf9d4d92feaaf68bb06c48c30a43ce1edb11c55c2"
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
