class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.11.23-164721-5c81056"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.23-164721-5c81056/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "95cdf13a5bbc2d025762ba8950bd3621186c9fe9078e3c175cae3b8b2ea89af0"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.23-164721-5c81056/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "7d58b7e888a00dc4bf089ad6029fb6f140805bbd29c8c78aec54cb6cc3b69cab"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.23-164721-5c81056/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ff2525dd8b551d4332ebe70262b8bc6a9520a87cbae5cba7f91fac0b22985057"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.23-164721-5c81056/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0e61de61fe971fcb061700c2d45645a3f7ed3409a72d950d47c7cc85116866f0"
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
