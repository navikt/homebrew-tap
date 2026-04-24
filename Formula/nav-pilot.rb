class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.04.24-124108-bb60c3b"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.04.24-124108-bb60c3b/nav-pilot-darwin-arm64"
      sha256 "dbc099aab23e3d03ab679aed2d7a9f74032e2e0aa8b9f6e5c0f5051c1a76ac10"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.04.24-124108-bb60c3b/nav-pilot-darwin-amd64"
      sha256 "b7468674f83d270015b44e2da9392cb557ed708573dabc4000cecf25bd9bbb35"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.04.24-124108-bb60c3b/nav-pilot-linux-arm64"
      sha256 "59f27b36b2be387fa9d850ad1a2aa132d2550d1f4f02540ff8e50778f8ee63df"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.04.24-124108-bb60c3b/nav-pilot-linux-amd64"
      sha256 "bcd3f5be9e952fa6cfd553927127ad5f36d98276be877189e4f839f21ebfd21d"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
