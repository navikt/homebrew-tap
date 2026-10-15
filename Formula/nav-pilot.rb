class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.10.15-152709-8a6ea4c"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.15-152709-8a6ea4c/nav-pilot-darwin-arm64"
      sha256 "35f69cd7198627d3568ab199b2070290b21bab8d78a0bf11bb9df0565a500960"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.15-152709-8a6ea4c/nav-pilot-darwin-amd64"
      sha256 "118223b053857dbea062b221154c28acebf312b4fe69ef82c1b2762f93d1612f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.15-152709-8a6ea4c/nav-pilot-linux-arm64"
      sha256 "b8805987e7490985e8c77112061d5b03aaeef41364940a3445b38012137c1739"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.15-152709-8a6ea4c/nav-pilot-linux-amd64"
      sha256 "b4a6048274c70e8f1a82de803433494a8211d41e662d4314a24befa2584d1f01"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
