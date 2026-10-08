class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.10.08-065533-78f0ab9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.08-065533-78f0ab9/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "3819f532c81832b105441eaae8b496b039339b75535c028861c13ffe08e19851"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.08-065533-78f0ab9/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "749b44f2993a7333b5134df4c3c46813f719a7226fb08cf8efaf8809a7ee4a96"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.08-065533-78f0ab9/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ef46cb8b24febb763a65ba47235c8980bac9266d71668138b693acb4a35e9317"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.08-065533-78f0ab9/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "29f06b4b86a4068d9bccb967f22eb1ece1dabada129eacb2acfbf8413aa534cb"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
