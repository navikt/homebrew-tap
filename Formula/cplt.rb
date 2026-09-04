class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.09.04-155859-2e88a34"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.04-155859-2e88a34/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "820d9b2ee1599461df5731df2efe36dadc3b20b470ead2c7e3966cba227daa27"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.04-155859-2e88a34/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "718c0cdc718e9710e7a03305a2411ad18d8b1091f12dd5abfc60caa9f854b425"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.04-155859-2e88a34/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "24671a2d180cbc541458a5ac09d04077b1ddf50cba6322ad00b92cc7c41161a9"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.04-155859-2e88a34/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8e20d6972d32ea5a4aa06c576701e6a383bc0d4f8bc4ef5b0704872f14dd3914"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
