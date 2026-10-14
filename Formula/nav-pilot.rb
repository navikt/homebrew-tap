class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.10.14-135738-925f30a"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.14-135738-925f30a/nav-pilot-darwin-arm64"
      sha256 "c8e1b97f8279816109e619f26a44cd9898114720f5cd95385da81c5199d222ed"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.14-135738-925f30a/nav-pilot-darwin-amd64"
      sha256 "2bb5e3bb9d0a9c6aa71b54928da51ee11886507e1eea881d6206aafd6e595a61"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.14-135738-925f30a/nav-pilot-linux-arm64"
      sha256 "d5a6a92c0d3d44d8f1f512a4cc9a62e8701d73fbd99caa586f834c1004fad427"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.14-135738-925f30a/nav-pilot-linux-amd64"
      sha256 "2c94cbbf0fa98490d697dcbc9bf8763dd236cb6401ef800e1c3e9a6302b9c0af"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
