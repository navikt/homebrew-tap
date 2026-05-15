class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.05.15-141852-d0c0363"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.05.15-141852-d0c0363/nav-pilot-darwin-arm64"
      sha256 "f629136c2ac2e25d3ae5bac7a304311bab2cbe8f3d811d71fc8bd7aa250ee7b3"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.05.15-141852-d0c0363/nav-pilot-darwin-amd64"
      sha256 "f35ec404d43358a1d7c4b12794086528a67fae20e32ec405bfa5259b7cfa6113"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.05.15-141852-d0c0363/nav-pilot-linux-arm64"
      sha256 "7700dd574eb6fdd27bd83a640a36d35c75d5b835d34a1087b4ab473203e133ef"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.05.15-141852-d0c0363/nav-pilot-linux-amd64"
      sha256 "162814623b376a95cd7e80638a68d54f8e92da1bcfbd4a98ca07d4ca57b3247f"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
