class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.11.02-225238-10a2882"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.02-225238-10a2882/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "023a19657110fa382a447fef683c1b6966700b75bcccf94440f701a85671a607"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.02-225238-10a2882/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "e578f27ba9a6eb318606a50c60d55e5a022a867792647e6878f76d42e0096689"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.02-225238-10a2882/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5f85beff40e1f7167cc0b4a91d25b1c01021bbffe4cdf68cc200322e51d91e3d"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.02-225238-10a2882/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "65c4e2d39c1f49a7e0018002c8bb0bcfef08965aee85676759b591ee84fdbc46"
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
