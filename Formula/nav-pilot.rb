class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.27-161223-e5083a8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.27-161223-e5083a8/nav-pilot-darwin-arm64"
      sha256 "fd9e6a56ec1ab0e6e089c204dcd8d197021a476263b016be787416ec1b5b14e4"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.27-161223-e5083a8/nav-pilot-darwin-amd64"
      sha256 "868aa18ea9cd5ceaf16c6afd9774bc2b74a9669fcc44d016a40e3e49a8c06bd4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.27-161223-e5083a8/nav-pilot-linux-arm64"
      sha256 "1f2fa309707e67dcb54632d5051471e1c6d33501f16788a0b6591bf6d991feec"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.27-161223-e5083a8/nav-pilot-linux-amd64"
      sha256 "b6e9628d0890734403926f9d747fc4cf3eea7582e21a4487978b2297a5841609"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
