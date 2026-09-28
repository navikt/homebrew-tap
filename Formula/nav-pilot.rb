class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.28-013345-6f1fd70"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.28-013345-6f1fd70/nav-pilot-darwin-arm64"
      sha256 "b1a5c0b4f69eb5e9e1a30c32ba31190503a40f67078522ae067ed0d9ddd8b8db"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.28-013345-6f1fd70/nav-pilot-darwin-amd64"
      sha256 "97cfac8c474ba4d12c94084ef03f3844306fa4790ea739d40c1b03a8e1c03691"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.28-013345-6f1fd70/nav-pilot-linux-arm64"
      sha256 "29d002876d02c5b4128c591e17a859639a8f38b7a89c4e04f43d4c060ecf04ed"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.28-013345-6f1fd70/nav-pilot-linux-amd64"
      sha256 "19299a06dafd1b60f8b06fcc17ddfcfa280dfa091ef67f84f27bc92c9107d5ba"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
