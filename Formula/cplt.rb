class Cplt < Formula
  desc "macOS Seatbelt sandbox wrapper for GitHub Copilot CLI"
  homepage "https://github.com/navikt/cplt"
  version "2026.04.25-063205-fb3874b"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.04.25-063205-fb3874b/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "e0494625348b425f5437297b486f8aed656113affefc92c593c6065c364d3ffd"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.04.25-063205-fb3874b/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "667af8d7ca45423a91aea80bbea4bf0ef4af7c1817b553896ce8e2653519801f"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
