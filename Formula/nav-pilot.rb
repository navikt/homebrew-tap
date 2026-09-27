class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.27-181826-a88884a"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.27-181826-a88884a/nav-pilot-darwin-arm64"
      sha256 "14033a4579c23810406521410254aa361cbb60f7f2121aa77f6def840d0a6f27"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.27-181826-a88884a/nav-pilot-darwin-amd64"
      sha256 "4226be15eaae8cfea021d0f360362bf9170ac591bb910aa53b13c0dbe4f4a774"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.27-181826-a88884a/nav-pilot-linux-arm64"
      sha256 "e2b65e441e46b47607e04e1ffa54eab15bf77c1713110d3998a8d5c6760a9ad7"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.27-181826-a88884a/nav-pilot-linux-amd64"
      sha256 "00c74ad1e788e8627cf22741710673e4e4bf3223871e8c44b8b975e82ee1d35d"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
