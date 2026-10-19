class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.10.19-052427-b9e6850"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.19-052427-b9e6850/nav-pilot-darwin-arm64"
      sha256 "1edce80767389a5796a9fab701660b66f1fd7668820bfbb33c7dc7cbbc89b13f"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.19-052427-b9e6850/nav-pilot-darwin-amd64"
      sha256 "9e253344a34a35f919b4d3163565414ae4c5a1bef4d5658fdd30b89680482ba3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.19-052427-b9e6850/nav-pilot-linux-arm64"
      sha256 "f28138a5772022ac83e3d54f330081b0f8a6d78a2f7ba5a46635fa7c9643ebe4"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.19-052427-b9e6850/nav-pilot-linux-amd64"
      sha256 "2939c2e8b77615318e5b456d142411da1cd781155868b450fc280e9512aef49f"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
