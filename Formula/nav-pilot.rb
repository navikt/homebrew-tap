class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.05.13-095031-5b8fd31"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.05.13-095031-5b8fd31/nav-pilot-darwin-arm64"
      sha256 "4ff6f276474100c6851d6ef6f340573f16228b1231a0e1f718c81c1bcf27cb46"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.05.13-095031-5b8fd31/nav-pilot-darwin-amd64"
      sha256 "d91f413854a5263f2ad32f4cd19e764ca5359bc88c12305156cd715e22361cb7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.05.13-095031-5b8fd31/nav-pilot-linux-arm64"
      sha256 "586b59b03c8143aa929ba8edc238c447b3d630d37cf0e82d66e0217e7a3022fe"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.05.13-095031-5b8fd31/nav-pilot-linux-amd64"
      sha256 "862d61abea54eff25e2144ae207ffdde4888fd62f7e8a377565424444262c31c"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
