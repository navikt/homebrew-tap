class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.09.04-135825-6b8ccb5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.04-135825-6b8ccb5/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "c82d8fc6924bd9d86c9fc872feefabb503ed3e4da8317c307ea8625e64bed102"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.04-135825-6b8ccb5/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "c3ba30d0bfd79256964b1f5e4ef37ba8d97eca98fe8e2bec1736ac9e781296a5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.04-135825-6b8ccb5/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d846208658dfe47ab07e7350212dac87a196ab797c1dce3bd7efb3cfce093a53"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.04-135825-6b8ccb5/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "65a4b3e49039f4e71eada31125f18b03aad2f56e6d968348f1e0d4ba1c184de4"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
