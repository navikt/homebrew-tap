class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.10.23-140826-4be9ed0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.23-140826-4be9ed0/nav-pilot-darwin-arm64"
      sha256 "1ee0b2eca54d98fbd4e03d91dec5219914ddf9c5ab2793fea627380e32c1db7e"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.23-140826-4be9ed0/nav-pilot-darwin-amd64"
      sha256 "aab1d3c152f15e29884a6af5fd4b70fb41aba8b9b723122351128127c01f11d9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.23-140826-4be9ed0/nav-pilot-linux-arm64"
      sha256 "711472630a15c46ab331124c736ee77cf018e637e3e000c24b0c2131a441b5db"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.23-140826-4be9ed0/nav-pilot-linux-amd64"
      sha256 "a53f0685454ddd6172601b297d74ee8a53cf909fd7b90da88f08a6aa219bccf4"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
