class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.09.14-135706-40287f8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.14-135706-40287f8/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "0a18f52a36b52e41708415b211f9f097a8dae82e0f5367fef29a97add4449038"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.14-135706-40287f8/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "fc64ac80ebe0ad5fef7c012fb4307e39e6a135858efc63a401c660d1c07096ff"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.14-135706-40287f8/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5514b0ec6b0856a71aae10a66e0f5c00c609b2c3ea4efcf64e4a8528f686e1f4"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.14-135706-40287f8/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3990fd8b9d6b6316f4156d60f2bd3c4707e343c272d9d0dc317acfda6199222d"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
