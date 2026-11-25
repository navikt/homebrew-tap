class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.11.25-191731-6d6c48f"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.25-191731-6d6c48f/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "6a508728f1d537a30f9c43fd5b87ef3b955f7dffe56fd7fa235bc3e10a76502f"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.25-191731-6d6c48f/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "c2119d7a6cf5c99d8fb79f1b13ba714f239f5c94d8739d79cf28db3d1b59677d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.25-191731-6d6c48f/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "031d7f9f0e78c7d36f4290c782ba47c9eb025906503914ca7521ee0066ca0e9c"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.25-191731-6d6c48f/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4dafe3b286c91616622774b581764081abe20d131e000008cc8ff3b778962ba2"
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
