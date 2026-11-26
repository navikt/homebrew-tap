class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.11.26-075006-4a08991"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.26-075006-4a08991/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "4050493dc1f6da07f3fe84c75ea5f40c3874fa67602f81d884948915c53d0098"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.26-075006-4a08991/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "f7933dd170503632d3f65a430bf57b8e5ca36f65ad0a31ce2449b224a0d44088"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.26-075006-4a08991/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b97a95c5f72ccc62753368fd86a4ff975ac5f048d7f042dd3c67f2bbff21afb6"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.26-075006-4a08991/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2e8dbd35045acdadbf329386044ac77b152a038f1c542b54e8a1f285786b1d56"
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
