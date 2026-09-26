class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.26-132611-4048c01"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.26-132611-4048c01/nav-pilot-darwin-arm64"
      sha256 "edfb270f4b4a68c4c58aca06c6f39d6bc0b4cd4a094d15361a16a391b9e9eda7"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.26-132611-4048c01/nav-pilot-darwin-amd64"
      sha256 "68d7d883740e4330424104bce49b21d2104b15cdc94b7d0a018867b9070d79bd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.26-132611-4048c01/nav-pilot-linux-arm64"
      sha256 "391121bf0a4f690b7a76cc87754411df8dadec243197e3e74c24206ad3e85142"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.26-132611-4048c01/nav-pilot-linux-amd64"
      sha256 "114533b70bfd9e0d92dea394a9cdb0a356a7e6f9dd0259595210655209b06bb4"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
