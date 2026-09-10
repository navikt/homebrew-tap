class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.10-065221-1ba0c23"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.10-065221-1ba0c23/nav-pilot-darwin-arm64"
      sha256 "8b6af9d71aae8b3a7eed90986dbbd74ac2b6bf869a01c17254e66cc6f383c504"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.10-065221-1ba0c23/nav-pilot-darwin-amd64"
      sha256 "a6390c3258a71245808aff4fcca7d1e06f5a2f123571896cb7b047cc28842163"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.10-065221-1ba0c23/nav-pilot-linux-arm64"
      sha256 "4c31fafeb4683da3b35278fc86519ea2a736bd9d47954331c43c015031f6c4b6"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.10-065221-1ba0c23/nav-pilot-linux-amd64"
      sha256 "8f30f86cd9598356a34a9198636d9caa67cde1812cc26af6232091ee272582ad"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
