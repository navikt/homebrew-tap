class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.11.19-180417-f22d200"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.19-180417-f22d200/nav-pilot-darwin-arm64"
      sha256 "ea2306b6925cbf51ade5d6cf5a809d9aeac9086bb6ba83097c7cf062ce425740"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.19-180417-f22d200/nav-pilot-darwin-amd64"
      sha256 "f65cbde652b13a838befc9a327526ec7a4c8c2485dad84a7b1280dea5d75ac41"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.19-180417-f22d200/nav-pilot-linux-arm64"
      sha256 "bda920e5622fac61e7513df473880ac7209d7772ef08a5fc6fc3f3bf72b29e3f"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.19-180417-f22d200/nav-pilot-linux-amd64"
      sha256 "1c197c18acc1bed37268694389956cbaa504833ad421b1a800848b8f7a59e690"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
