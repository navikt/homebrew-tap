class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.10.22-230006-c21efea"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.22-230006-c21efea/nav-pilot-darwin-arm64"
      sha256 "cb9637f0ec3e8fe706188b5c6952661cb3f47e224d08eb48ee77c213d5a936ab"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.22-230006-c21efea/nav-pilot-darwin-amd64"
      sha256 "32af7a99fd362fb50ee310f14ecbe36571bb64467986b62c871885892a0600aa"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.22-230006-c21efea/nav-pilot-linux-arm64"
      sha256 "acb98199f7f379f08d3a5e1448fb44bfd186b20e28c31f92db7699229f43f978"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.22-230006-c21efea/nav-pilot-linux-amd64"
      sha256 "df1594bc1ffef7f7b82e399c9b98a9194c7214c7fa3bdd0af72fd0619f8651b5"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
