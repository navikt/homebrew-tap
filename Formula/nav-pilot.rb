class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.05.29-090843-cea699e"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.05.29-090843-cea699e/nav-pilot-darwin-arm64"
      sha256 "968b3cf6c9eb66571868720612b9a69c2ecc684b5c7c654f0f8f7f8750db8115"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.05.29-090843-cea699e/nav-pilot-darwin-amd64"
      sha256 "cf0491c4ada067ea7e509b22814e90aecb8bcfb8f5973dbae03a42f2fbd152c5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.05.29-090843-cea699e/nav-pilot-linux-arm64"
      sha256 "e9855dff94baa14132acc10b0df94e600944a7efab7f867209b6c060d27544b8"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.05.29-090843-cea699e/nav-pilot-linux-amd64"
      sha256 "bdf034ba4b2458c43239be987c94a3ad744aae6d79e2a2401cca6a76560e8335"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
