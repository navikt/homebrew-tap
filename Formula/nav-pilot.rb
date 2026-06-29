class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.06.29-210836-b80c090"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.06.29-210836-b80c090/nav-pilot-darwin-arm64"
      sha256 "3266c14745d2c63c67c5b76364eb0095d4ee7c4ae46ee5c6ab0b3ee35e434362"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.06.29-210836-b80c090/nav-pilot-darwin-amd64"
      sha256 "7b316911904c4a089ae72b7f19e699ffe1d364a28bc5f17fc7943a5bffeabdb0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.06.29-210836-b80c090/nav-pilot-linux-arm64"
      sha256 "240e090a1052b432e6a952e8db843a93008899d53dc71e5427419f019a21f2ec"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.06.29-210836-b80c090/nav-pilot-linux-amd64"
      sha256 "47a57837a70eddcc99ee215e6ae07dcd6a10d463dfab42521796fe49801db4c5"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
