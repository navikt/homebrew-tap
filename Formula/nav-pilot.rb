class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.13-142734-50164b4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.13-142734-50164b4/nav-pilot-darwin-arm64"
      sha256 "1fb8c4be7eb26114ecb0797aedd0e068b9eebb8f08e9edcdcf13094c16446f52"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.13-142734-50164b4/nav-pilot-darwin-amd64"
      sha256 "18cba921a35fa744b9732a2624edd6d64f2f5a7cb2fa30d9a40f50647220564d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.13-142734-50164b4/nav-pilot-linux-arm64"
      sha256 "ae6d5a3420746855fe0943f1d630c4b713709cd46af7a8cf4a6f8b4f9b4e5e5f"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.13-142734-50164b4/nav-pilot-linux-amd64"
      sha256 "8e12f126c8e740795bd07142f29553ccb2c1ec491f62316e8d201f1705050a19"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
