class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.05.13-073233-78f3103"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.05.13-073233-78f3103/nav-pilot-darwin-arm64"
      sha256 "78693a1a4e58fdd9758b23965eb36426ee4b8af2b82c7116787f072fc619147b"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.05.13-073233-78f3103/nav-pilot-darwin-amd64"
      sha256 "6c05340c61f3424ea4471401d647ceedc860d981a772c40258f15a05f21ab54a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.05.13-073233-78f3103/nav-pilot-linux-arm64"
      sha256 "ffed3390143426f577fff1e1f8d3eca8871ba5949510d988c8a2c6c0f2dd1a18"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.05.13-073233-78f3103/nav-pilot-linux-amd64"
      sha256 "cb80bcf5c0099b86cf726f665b7843f8a69527b34b0db55736102eccde7f6909"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
