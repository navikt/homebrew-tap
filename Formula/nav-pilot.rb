class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.26-091931-d979c30"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.26-091931-d979c30/nav-pilot-darwin-arm64"
      sha256 "be0973dfab597d457144c545d6f67c18e9ab1e4af765a5a1676ca6d7fe0a6553"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.26-091931-d979c30/nav-pilot-darwin-amd64"
      sha256 "3dbd1e08828438e929ccd1887d117544c32017e484cc1e321ec52dbcff86f7f2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.26-091931-d979c30/nav-pilot-linux-arm64"
      sha256 "d0a5b6dd2a6c04ce3d773ccbe0865ee12cc49260d07b864ecf7b6d1d584d88b6"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.26-091931-d979c30/nav-pilot-linux-amd64"
      sha256 "4475915ff30c90b3f9fbb3812498ba5258534b4785763ddcc52d0ba1856d3c8d"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
