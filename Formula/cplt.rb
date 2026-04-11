class Cplt < Formula
  desc "macOS Seatbelt sandbox wrapper for GitHub Copilot CLI"
  homepage "https://github.com/navikt/cplt"
  version "2026.04.11-7a46440"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.04.11-7a46440/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "c848a8649d3630310e4cdaa4b4c5abfcd7c5ae5b4028f361e2b9d384f11dcf9e"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.04.11-7a46440/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "80b58c74dd409b78411eac281efba137b190bb862cd3468e403ebbd944bb1f85"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
