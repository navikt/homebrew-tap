class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.08.28-080711-62a87df"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.08.28-080711-62a87df/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "ecb0540a036e4fe9defac4caeeef98c865ce1cd1d055530efe79f9e4efdfcc1f"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.08.28-080711-62a87df/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "560737c9349ecfadca794495cea355b6f12b4cc69532b75ad5697c3b8db626af"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.08.28-080711-62a87df/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "98a4bba511d796951a2a08af2897d1e308d6deb9c4c62761b2f7c5133ea62b76"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.08.28-080711-62a87df/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1d3b3e19026b19c853d95b8e6b1df5d85f9b3bbb50eee8d3bcec84a0507b8ba8"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
