class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.11.11-094753-968a115"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.11-094753-968a115/nav-pilot-darwin-arm64"
      sha256 "0f94ce2a2109dd03b977c38652be218c853878e8afd3e7588981a77c07878887"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.11-094753-968a115/nav-pilot-darwin-amd64"
      sha256 "a9463fff9a9848e3c5b4617740e280612ca1d20a344db3247a3dfd786385a9ba"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.11-094753-968a115/nav-pilot-linux-arm64"
      sha256 "431ec986135d13e897c8357ee8cdd9b6f82a5b9a9eaae9f0298ea244f2d56ca6"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.11-094753-968a115/nav-pilot-linux-amd64"
      sha256 "9328d630f7de098fe9f8e61ef1c5db2933fbbaf64fa84f1cdda11fe0c4dc8438"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
