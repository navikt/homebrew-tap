class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.08.26-203934-976b64f"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.08.26-203934-976b64f/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "a2edd71f564c62859b653addd54066e33ec41d97f226190c147fb606fdce13aa"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.08.26-203934-976b64f/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "e387a770b5c0d1492d25714bb63f7ba6f4446145df333724d1734cb667a71cb0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.08.26-203934-976b64f/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e359ad9f41d8702f9ef17c2e051ae74d3263ccfb7fc3ab1f53340e3f1ae6b940"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.08.26-203934-976b64f/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "46cc21c57c3f1c11dc930e22c25f0f576f331ec6a87017e14cc4a81f7dc703a8"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
