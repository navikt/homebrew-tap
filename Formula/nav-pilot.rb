class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.10.10-205026-d3884f2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.10-205026-d3884f2/nav-pilot-darwin-arm64"
      sha256 "9f0225275f3ddb88f22c68437b31943933fc0f536bb32bf896613c07ef4a98e3"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.10-205026-d3884f2/nav-pilot-darwin-amd64"
      sha256 "6d195364308ed5a3d188af700075dadeb332e943cfdd39b89193343d73313209"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.10-205026-d3884f2/nav-pilot-linux-arm64"
      sha256 "65abfff51370a09e1f77ee71afb86bbcb7f04dafb747546f890132b73e8ad606"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.10-205026-d3884f2/nav-pilot-linux-amd64"
      sha256 "c3203870c9f6f4fafdbefe586fd23bd082aa6151ceebc05c6d033cf0cd2c6230"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
