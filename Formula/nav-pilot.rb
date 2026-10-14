class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.10.14-125857-08b207c"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.14-125857-08b207c/nav-pilot-darwin-arm64"
      sha256 "70368c5caeb537dea7164770162c523f84a1c5d91f0f32202d0eac84456648d3"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.14-125857-08b207c/nav-pilot-darwin-amd64"
      sha256 "be8a3b739ebbc4d55c91ceb46606e80e28232b020d93ce1f56f1d8e4d8c18f21"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.14-125857-08b207c/nav-pilot-linux-arm64"
      sha256 "50412b63c05bbbf1f76c62882e3fa887102b20f71329324fa6c5e8892b1ecb0e"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.14-125857-08b207c/nav-pilot-linux-amd64"
      sha256 "5b32e8f9d10385cebd9309836066f3d465d6213d193b482550d70fe19c581ba4"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
