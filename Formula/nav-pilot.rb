class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.11.25-122410-f250a0d"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.25-122410-f250a0d/nav-pilot-darwin-arm64"
      sha256 "3ec3629d5b8d2b693bc50103bde1b740c152c33d586461f720c36601ebed5c92"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.25-122410-f250a0d/nav-pilot-darwin-amd64"
      sha256 "698e4c160f7e5acfad87998e236eb7f72ea4e7ed8123d73b4beadb979087f15e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.25-122410-f250a0d/nav-pilot-linux-arm64"
      sha256 "6c4071d8e160fac9c2be358f1252ece82ae33b2ecd69b2bce01d72270039ff2d"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.25-122410-f250a0d/nav-pilot-linux-amd64"
      sha256 "f7faa924c5f3b2c5ec98cee173e0e69000b828a36f2f469271d4d6d1529bd041"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
