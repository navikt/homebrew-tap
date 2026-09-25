class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.25-210656-270abb4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.25-210656-270abb4/nav-pilot-darwin-arm64"
      sha256 "384023d76dff2a58614b290cc9481c9f38527e495f51d2ff9f93ee63db8d1f08"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.25-210656-270abb4/nav-pilot-darwin-amd64"
      sha256 "400977e47f894b783b13c2077bb4c1a6c3d59b170eae6e742f46a53be946dade"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.25-210656-270abb4/nav-pilot-linux-arm64"
      sha256 "78a8bcf770c7883bc828b19555c4dbaa7ec3e2d8144217fe13a585913ddd70d1"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.25-210656-270abb4/nav-pilot-linux-amd64"
      sha256 "1693c83df4a89cec7f4c3aa1375a59dbb36d6f090bd1b30aac59fb477ed5e2af"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
