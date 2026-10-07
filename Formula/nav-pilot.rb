class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.10.07-080651-ee753de"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.07-080651-ee753de/nav-pilot-darwin-arm64"
      sha256 "8c42407a726d963bc7afb0e22d6ab0257d3db2ff22051cc06c90e3a199c70ca4"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.07-080651-ee753de/nav-pilot-darwin-amd64"
      sha256 "c6caa13152b5a09fad229eded08c911b041418d4c38f1568c3fad6b12aa73a01"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.07-080651-ee753de/nav-pilot-linux-arm64"
      sha256 "93d2cc329101c11dfc85b080091e2c02b5b3e96d387c624911360d62154662e4"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.07-080651-ee753de/nav-pilot-linux-amd64"
      sha256 "3d0056be0a297913470edcace9693aad5cfe27071f4cf3019ad5670e84ee15d4"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
