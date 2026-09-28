class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.28-192553-e7c28be"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.28-192553-e7c28be/nav-pilot-darwin-arm64"
      sha256 "88819273c58ace95e70dbb951d5bda10de20ff0c686510fab6940a52caf2b5e4"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.28-192553-e7c28be/nav-pilot-darwin-amd64"
      sha256 "ef8d356fada6b363cd8c0b9aa03dbdbfd2799cb6ee33408d69e378d90fd2785a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.28-192553-e7c28be/nav-pilot-linux-arm64"
      sha256 "ca0aa7b8c6ef6b442a52c570158871bc7eab424b7df930c5d8704e13bfe90689"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.28-192553-e7c28be/nav-pilot-linux-amd64"
      sha256 "518b181969a85deac73d2396a0076da6e4be361469f2e98be5ae4a197eb3b614"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
