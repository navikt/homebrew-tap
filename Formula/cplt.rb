class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.10.23-053641-5dfd003"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.23-053641-5dfd003/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "396d4da1a6fe40028f71a582345e8e2340521ebac7a90441b1a0c2bf6f8b57b5"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.23-053641-5dfd003/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "0ac25de0cf53a2495fc8f8d6f9b431c390db0902f72fa2bd6d1f9e605fceb074"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.23-053641-5dfd003/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2b9adac44e2098bda47bea502faecff65405f4c2805babcee6322bbe5f655cb9"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.23-053641-5dfd003/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b86817f9d56f674ad2999832f5cbcfad16f418bcfb409bbb153b22c414b29474"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
