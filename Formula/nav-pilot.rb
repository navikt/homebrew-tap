class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.11.26-134120-5d09f8f"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.26-134120-5d09f8f/nav-pilot-darwin-arm64"
      sha256 "e6801ac44482b4af365209a221fdb7a48d2e371b56c8705768123b9b326d12a5"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.26-134120-5d09f8f/nav-pilot-darwin-amd64"
      sha256 "8f29c01ed8c53322217099b9d132948661ceaa24ff49ccf15a48e3f302ae47b1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.26-134120-5d09f8f/nav-pilot-linux-arm64"
      sha256 "6095a4c9f410e078eb4d52a5b530bee619fd35e6af9513b15721f6eaca591e6f"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.26-134120-5d09f8f/nav-pilot-linux-amd64"
      sha256 "4bf02e5a1f48cbe3ea664af382cd2fe00cc6a137e2c491d84bb78cf6e3444e78"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
