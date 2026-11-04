class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.11.04-122914-fac3f33"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.04-122914-fac3f33/nav-pilot-darwin-arm64"
      sha256 "f4d079e119fbf36eb59cc21929bf6e24e90e9a3aad3aa05bf5d53fec5212173d"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.04-122914-fac3f33/nav-pilot-darwin-amd64"
      sha256 "6061158400abb539eb20d3828e01e9256dd5147f4ffc514a9cb3ec40b892cf69"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.04-122914-fac3f33/nav-pilot-linux-arm64"
      sha256 "86dc020a924970d8c0fd69c068664940e171d45bfdbfe5f02a29f0aedb82d9c0"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.04-122914-fac3f33/nav-pilot-linux-amd64"
      sha256 "0596eec2fc881bdf8a00d5189c0cad69ecbe7c63a3c94dcfb8f923ec21536eea"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
