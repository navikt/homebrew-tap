class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.08.27-095003-dbf6a48"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.08.27-095003-dbf6a48/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "8dc163aaef1d60ff579722052f706f5cd0ab97556653d6d328df6a91b581e000"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.08.27-095003-dbf6a48/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "4f8312a8469ceaa419fee96809cd7ab85de166f98e185b9fd9df6722c2c73d44"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.08.27-095003-dbf6a48/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e759254ecea9472a0faa4b8de5bf83a486ee87ab1de9ab1d30d2a2bb53863001"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.08.27-095003-dbf6a48/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "16ebf16a17a21369520b167ef3e3638a755e2fc248daaa1f259c2ecbad7faf01"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
