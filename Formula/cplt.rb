class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.11.24-154103-3e8bff3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.24-154103-3e8bff3/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "664009fa3c62170a9c1fe3f7b300a08320feb4c1c4c864b6f5adec6af91abce1"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.24-154103-3e8bff3/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "b9202f0889e8a65712df01716e76f8925e11665bfab79869bbb17008d9339b65"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.24-154103-3e8bff3/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "96d315d90de4cc35c40bc97362f9938fa00dab1beadbaf10672f75661fe6ede1"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.24-154103-3e8bff3/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d45dbb653743134dfaf93a60ff560be940fb087553fe3f02de5dcb7b77009b89"
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
