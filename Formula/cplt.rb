class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.09.07-093609-b30d60e"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.07-093609-b30d60e/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "4561213e9bccb7de8fd1b99ad9e7c3492ae43e2082b5f9c849d7024dd06c98e8"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.07-093609-b30d60e/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "2a0bb71ed480d78c8dffe64a79655dd48ebd95603c6f9d3211d178536e560a65"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.07-093609-b30d60e/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a95c6c26c720023278c410a4ef4b159abc9771d0b5f9415c322685b0f2f565bb"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.07-093609-b30d60e/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "59e8df94072c90635478a44ec83ad8460c4c0c0e7d554a9ff39ed7f6fbb593dd"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
