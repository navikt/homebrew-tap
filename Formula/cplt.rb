class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.11.24-091930-41763a7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.24-091930-41763a7/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "5d89b750cb43c9f76f2550433e373c62e145c1867ea0dfd5cd52bf1f48597c4d"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.24-091930-41763a7/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "1a27bccf9f66bea80745e974d61cd7ce1eeece6bd58577bcbc3939f7ae0862d8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.24-091930-41763a7/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "02029e54cb366ba67eac2b45e43873b9ecd71920cf40c42f5ba4c4a67f333252"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.24-091930-41763a7/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0b69166391f8412247c292b4c7cc938faac3bf9c98c198e4981d054e05dde5c4"
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
