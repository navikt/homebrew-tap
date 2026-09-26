class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.26-110424-73932eb"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.26-110424-73932eb/nav-pilot-darwin-arm64"
      sha256 "551b198c71688f798790023cb24602cc07e4f947f1c8b46bd973833c7bb08129"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.26-110424-73932eb/nav-pilot-darwin-amd64"
      sha256 "3affac5bd367146e55ddfc044b9bb2220cf41e143f8da02faf585ce4c952dea0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.26-110424-73932eb/nav-pilot-linux-arm64"
      sha256 "327be28f480e3b279721ac539c904a8884fd5d7e0806a15a13581906c6c950de"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.26-110424-73932eb/nav-pilot-linux-amd64"
      sha256 "0e252f3fa20208aa767bafee4112de1446cd0ab1178fb774924587f4d843a8df"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
