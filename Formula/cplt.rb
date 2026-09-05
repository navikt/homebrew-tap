class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.09.05-194043-d8aa654"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.05-194043-d8aa654/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "682dfbd81f6a84cd529e9a644a9a19624eb1dc9ae036fdd680d3070164b61b19"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.05-194043-d8aa654/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "449846f349424558f68d311ded4ae9e6576a7c8d30ddf72259f57562b7badee8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.05-194043-d8aa654/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ee4666c0e3456d16de3a76f999aa658166048d46cf81dc43473917eb263c28a6"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.05-194043-d8aa654/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b3b91f838da9b6a187dc8f9d6509e254a3c172880e470e193ad4674e0b3c62e8"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
