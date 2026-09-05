class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.05-101536-d5926ca"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.05-101536-d5926ca/nav-pilot-darwin-arm64"
      sha256 "a5f4997419a3934fb2076fbfd2d140e6e4f9a7e4380f5a80f2b7a01e82f59a56"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.05-101536-d5926ca/nav-pilot-darwin-amd64"
      sha256 "77fec437ed1a1642fdc5a45dba8030b4986b193153738cbc693fbd6253d161c9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.05-101536-d5926ca/nav-pilot-linux-arm64"
      sha256 "209fff85954468a94b5ab5eb1c73b019dff59e23886e796bf06f8b6c85b93898"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.05-101536-d5926ca/nav-pilot-linux-amd64"
      sha256 "49aa58a100e585d650d3c58dd3a10836510887652954cea3339317229bf12675"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
