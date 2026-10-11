class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.10.11-131708-0dcb638"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.11-131708-0dcb638/nav-pilot-darwin-arm64"
      sha256 "1917dc9b517c366b7756fce6c9f22732d3ad9bbdc8e5e4871925087497f20849"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.11-131708-0dcb638/nav-pilot-darwin-amd64"
      sha256 "d8ec697fc4f0d1a6e401817dadeff5612ee54285e478cc6e02d86641b4f01a7e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.11-131708-0dcb638/nav-pilot-linux-arm64"
      sha256 "c481ffbd0078ad4cfe680f31236c5e1d2849bdc31fff64e90a87676def94fd6a"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.11-131708-0dcb638/nav-pilot-linux-amd64"
      sha256 "cefefdef9ac2428404168bda767f8caac84e7fd47d44ffd31c07f8185d612fb9"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
