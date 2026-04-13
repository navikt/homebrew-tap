class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.04.13-183749-4cd2a10"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.04.13-183749-4cd2a10/nav-pilot-darwin-arm64"
      sha256 "e5e3ddba1b4f05c6548ba47021c70007c81a54bd9b7e761b2b6e77ad8d23acc3"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.04.13-183749-4cd2a10/nav-pilot-darwin-amd64"
      sha256 "d72237d117cdcdb27455005b6183b2bb8237f98023067e562d496e4e2c08b9a8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.04.13-183749-4cd2a10/nav-pilot-linux-arm64"
      sha256 "99d3e18f4a9d025e1f45724b97f2caf3441240b55ff5f4732aa457796a8e0c68"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.04.13-183749-4cd2a10/nav-pilot-linux-amd64"
      sha256 "abc0ce35453bc179bc2a5b39601512cb84c0eea0049785f9917c573dbe1e992b"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
