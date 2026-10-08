class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.10.08-190103-d4ae77a"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.08-190103-d4ae77a/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "926dd549dfce2eb0ed577ea86ca2bd8f4cbffc3f7395790feb6959f1b72b548f"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.08-190103-d4ae77a/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "7cf6fef640ac1998419120da22bf0d856585af18019e79ed55ae8a4bde5646bb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.08-190103-d4ae77a/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a69fda460a428006bdddaedfa8c856c470f8feac12dc169caf8220497b2c36a5"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.08-190103-d4ae77a/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2c9f0a3b0bace58676b3d000191565e8de7bfb7355d8b57b67e6dfc925928e53"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
