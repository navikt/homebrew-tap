class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.10.27-125228-35eaac9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.27-125228-35eaac9/nav-pilot-darwin-arm64"
      sha256 "4f348acf8f38416888c3a5b878742a9a3d964a93b4cc0f36739555d402186d22"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.27-125228-35eaac9/nav-pilot-darwin-amd64"
      sha256 "fa082185bfeb87989c679bc35cbae8da92cf8acdba37e44e21a6ee425e147c12"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.27-125228-35eaac9/nav-pilot-linux-arm64"
      sha256 "6a1088e224cf34c14f24299f1e8dbe765dc33838b8575699dfda2d747d5adfe7"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.27-125228-35eaac9/nav-pilot-linux-amd64"
      sha256 "b566d3a053c6bd3e7d353a68d265fd990b276cd8a2df8b84523b3d915aeadf94"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
