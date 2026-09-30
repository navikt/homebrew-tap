class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.30-060130-a873eab"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.30-060130-a873eab/nav-pilot-darwin-arm64"
      sha256 "1a2f4297fecc09fed65486e5f35a9503033dbaf6f8fbfa81187a4aab40392485"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.30-060130-a873eab/nav-pilot-darwin-amd64"
      sha256 "154c8a70b79979f8eb12daac2cf413c9fd843b25720ff26a5f98246bb738c7d9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.30-060130-a873eab/nav-pilot-linux-arm64"
      sha256 "2a66dd4fbaa2f29727bafa2da8edde80dd9d1bfb88c37dd60729b7337ccbe17d"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.30-060130-a873eab/nav-pilot-linux-amd64"
      sha256 "7bb7679498178b4ce638cb7eaa5bf225fbafbc8c11ba7c910646b1f607298ca3"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
