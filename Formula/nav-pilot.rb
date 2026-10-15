class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.10.15-071027-4f47eb6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.15-071027-4f47eb6/nav-pilot-darwin-arm64"
      sha256 "babeb58b7f8923ceb153a8e0ea2f60f4e1827a1e522182f3bef6432159b4f0d9"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.15-071027-4f47eb6/nav-pilot-darwin-amd64"
      sha256 "508321aac4a0f281926e0b906bae9f9375e1734f8a3263541f131ab0ec87293e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.15-071027-4f47eb6/nav-pilot-linux-arm64"
      sha256 "d516ea2425dd37aa02c3130085b4c7ce4c4413cf203ce08106919a14c98f3ddd"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.15-071027-4f47eb6/nav-pilot-linux-amd64"
      sha256 "d1643a72ad88d21f2df217cb05b24797704cd73b18ba95dd6b0fa5f27aea1292"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
