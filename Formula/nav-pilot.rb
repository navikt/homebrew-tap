class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.28-113024-0fc4683"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.28-113024-0fc4683/nav-pilot-darwin-arm64"
      sha256 "1a304a72f9c7a0606d9523d84ed1421603d575aab6a35043c8b5227dccad5bfd"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.28-113024-0fc4683/nav-pilot-darwin-amd64"
      sha256 "810bb360bc1718bf5baa15d9093033b2f65bf3b787f2dcd6b930a7a5566c68ad"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.28-113024-0fc4683/nav-pilot-linux-arm64"
      sha256 "90ea96e4d0ee98e9c8b19687d723ad3781c5c5bdbf47e803b363fcc9d059983e"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.28-113024-0fc4683/nav-pilot-linux-amd64"
      sha256 "9869d5bedc002b6c96054d81ceda154be8cf42358e9e72f4d0d2a2ee33882156"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
