class Cplt < Formula
  desc "macOS Seatbelt sandbox wrapper for GitHub Copilot CLI"
  homepage "https://github.com/navikt/cplt"
  version "2026.06.22-123224-0d192e5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.06.22-123224-0d192e5/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "b8a6b00a282fa9a1694b89f91877cd14df05dbd4e0abcc60aecdefa3d254f204"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.06.22-123224-0d192e5/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "1d1128ec4e68018d976fd681e2571fe4865ae940bc15b25fbb3de55cecc6b8a0"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
