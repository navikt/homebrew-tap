class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.05-130657-efca692"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.05-130657-efca692/nav-pilot-darwin-arm64"
      sha256 "39a088d3861599204c7453ad0660654e0a6e50fec75b37afa582fcc3fdbd4d02"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.05-130657-efca692/nav-pilot-darwin-amd64"
      sha256 "05712a6997493db81c758ff50e4355257245cfbabc5bc0ecf5601d80c3c2df2e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.05-130657-efca692/nav-pilot-linux-arm64"
      sha256 "843f97f43fa3b7ba38872f1f5397f7c64f33e319d316d1809de30b5673cbd0d2"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.05-130657-efca692/nav-pilot-linux-amd64"
      sha256 "0cb7a1897a0634fe5626085dfc6fea3626a90783a294139b491450f095a00f16"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
