class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.12-203913-e870a0e"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.12-203913-e870a0e/nav-pilot-darwin-arm64"
      sha256 "7f07d202bf1f4993f060dd7d210f7cd24f306bbf00cba3ad87b23dc5aa58faab"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.12-203913-e870a0e/nav-pilot-darwin-amd64"
      sha256 "8eae14823b99bf00e3dbc63f855797c90b7aa3853709ff90fef2fb137cd4e2dd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.12-203913-e870a0e/nav-pilot-linux-arm64"
      sha256 "bbc84c22e5c741731021f7d628d1172657175cb0d7cc906f520a1daa2bfa9550"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.12-203913-e870a0e/nav-pilot-linux-amd64"
      sha256 "052f69e28c1497766af65868d856821d7eaf41985e6197837d44b5b5c55c661f"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
