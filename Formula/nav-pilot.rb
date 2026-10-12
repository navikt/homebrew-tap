class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.10.12-161343-8b15fef"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.12-161343-8b15fef/nav-pilot-darwin-arm64"
      sha256 "7111e0a35ebdd8f1ce9de915168dd43d25c33eec517687d8369020dedb0f5cd8"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.12-161343-8b15fef/nav-pilot-darwin-amd64"
      sha256 "0dc8e1dc061d48e088567a4d5ff5507b0a6f84f54364cf0656f5349d80329114"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.12-161343-8b15fef/nav-pilot-linux-arm64"
      sha256 "1f89c42714e67ae68a98f6a80604936f5597f09ac8c86f23d7b6788837e4349e"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.12-161343-8b15fef/nav-pilot-linux-amd64"
      sha256 "af41b92c6304e79dc272dc16c3a8e060bfcdca8d8879c3041f93e62a4f93bf05"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
