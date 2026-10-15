class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.10.15-075316-78c0542"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.15-075316-78c0542/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "646692a738ec1a3c14dd53f48da2b865371162f9dcf9c5934a41f6f429be2485"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.15-075316-78c0542/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "5af494ddcf6af72a2c9bad5d080348c718b19e08c21233c6b423a0ab99f1b0f0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.15-075316-78c0542/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "33c1bd2a51c9f11731b8ebaa79da916234ac5308ea8890a27af533118bf380be"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.15-075316-78c0542/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "67b780c8953723f3353acf46103de3302ec22534e99de4246a179b1c32a99517"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
