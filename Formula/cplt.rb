class Cplt < Formula
  desc "macOS Seatbelt sandbox wrapper for GitHub Copilot CLI"
  homepage "https://github.com/navikt/cplt"
  version "2026.07.07-191210-e63f177"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.07.07-191210-e63f177/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "a3a6e2c998c180ef16efebfb918db84553ec4b50cbd182f45fe5c85d20f73f44"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.07.07-191210-e63f177/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "33bfdc198aef24d02024dba96b6197ccc6a03dd7ceb5fda258106e596c30c4ce"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
