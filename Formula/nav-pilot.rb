class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.11.23-195843-9769379"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.23-195843-9769379/nav-pilot-darwin-arm64"
      sha256 "70d9397ccf1a7fc6c1048e470f2084279dac3398935ab13f83ff8a42f80b11c2"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.23-195843-9769379/nav-pilot-darwin-amd64"
      sha256 "481068fe4e8d7d1fc2c59351554e15c4005607df937c660ebebd819bc3285e49"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.23-195843-9769379/nav-pilot-linux-arm64"
      sha256 "9db645a0695bea79bf50dca79ba8847f249fb60372b2e5c3e7f5de640d84b94a"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.23-195843-9769379/nav-pilot-linux-amd64"
      sha256 "6c6f378622a4a9308e44091769586026b4c4ebb62dd05e16ae7f22fc28f8197e"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
