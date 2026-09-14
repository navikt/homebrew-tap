class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.09.14-190341-3a8ff42"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.14-190341-3a8ff42/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "9fd7eaeae9b0be548fda4c7c5118cb2ff63141decb4ea310f4953ee931f52cec"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.14-190341-3a8ff42/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "2477c503abdd69c71e9530de007900cace2703726653a3e01301a8dd73b29c62"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.14-190341-3a8ff42/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4b561e4d92d04e55b08f5a1de6776c131705e192acde6cf2ace7a46590357dd0"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.14-190341-3a8ff42/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fc8452b76902435f6a13e8cca470c5ecfcb4d23cc0f9479873f6cc091ba0b554"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
