class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.06.23-062530-3353496"
  license "MIT"

  depends_on "navikt/tap/cplt"
  depends_on "rtk"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.06.23-062530-3353496/nav-pilot-darwin-arm64"
      sha256 "c5bdd88dc9bd24bf55e4fda36617fe068051f77088e3c4e617bf2f0ae392e1dd"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.06.23-062530-3353496/nav-pilot-darwin-amd64"
      sha256 "342c17b37a30473633ff80d1e37f30de609de434ef55939017a8e476494040db"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.06.23-062530-3353496/nav-pilot-linux-arm64"
      sha256 "94e96d11bdaaaf265aba1b6361ca208f68cd80bbdbff2ded61baf02d6f5ac8fd"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.06.23-062530-3353496/nav-pilot-linux-amd64"
      sha256 "31b12f820445fe3919c68bab399069f7ec05646bbad0b449facb33f872bfa86b"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
