class Cplt < Formula
  desc "macOS Seatbelt sandbox wrapper for GitHub Copilot CLI"
  homepage "https://github.com/navikt/cplt"
  version "2026.04.10-35ed1ba"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.04.10-35ed1ba/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "e597c7043aded3a540a987c117f10a466c308a2aa415558d1e305b1e4d4bea70"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.04.10-35ed1ba/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "37060efaa8cd0bfe38d45242ed3d42743faaa70ef47528dbede5b16f44f832e6"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
