class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.08-154002-a3e6892"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.08-154002-a3e6892/nav-pilot-darwin-arm64"
      sha256 "82471f7afefb1898dec7e473f7bec19d0a2b01eb79212500109103e35fb549a8"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.08-154002-a3e6892/nav-pilot-darwin-amd64"
      sha256 "68175b4dd3fbc12defa140d2aa5c44ac377668b33e69f22ef15f030f20fa9516"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.08-154002-a3e6892/nav-pilot-linux-arm64"
      sha256 "cd50d2e3d7fcfd445dd3d12de0dd3807e9c4447599d22eadbab6da2b7c5d6a83"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.08-154002-a3e6892/nav-pilot-linux-amd64"
      sha256 "6ffbb671c2d958d955b52a80517999bae17f9b918d299177428d040665b2b9ae"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
