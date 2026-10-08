class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.10.08-064226-2b563dc"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.08-064226-2b563dc/nav-pilot-darwin-arm64"
      sha256 "189e404543c8cb2ff41002631651eb7a898a5e0775c57938791ad97a41581f1a"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.08-064226-2b563dc/nav-pilot-darwin-amd64"
      sha256 "093753b71e37b5b9539b6b9748530331e845b82ecda0ae37e7d3dbca16e97551"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.08-064226-2b563dc/nav-pilot-linux-arm64"
      sha256 "b4fee0595d9224a75909dbfc73ec7ab7a861eb11592e376ebff47f07094b5e0b"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.08-064226-2b563dc/nav-pilot-linux-amd64"
      sha256 "ee1db22416b1d17ba7337c29197f8489acb86bf3ebca7dc1b0b55d94389f7489"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
