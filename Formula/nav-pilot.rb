class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.04.26-184804-fa7e104"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.04.26-184804-fa7e104/nav-pilot-darwin-arm64"
      sha256 "7100e0f2fc419b07ddd243325168f4ed83f31d99c1f827024d0ae47f2c6e4a13"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.04.26-184804-fa7e104/nav-pilot-darwin-amd64"
      sha256 "4c9b13c3be81f3b716c25a6ac8b67507be998abd7078226e46fc2c18fd51852a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.04.26-184804-fa7e104/nav-pilot-linux-arm64"
      sha256 "c53b1b0680b0df57d11bce313019d739151b63f92ca2b0b0637e4fbaa713fd83"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.04.26-184804-fa7e104/nav-pilot-linux-amd64"
      sha256 "9b65d928fb831177a7ed34d8dd0ace7a585cf831fd4115fc6647faa6db779360"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
