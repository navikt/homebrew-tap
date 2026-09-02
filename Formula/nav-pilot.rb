class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.02-161152-f2f429e"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.02-161152-f2f429e/nav-pilot-darwin-arm64"
      sha256 "7da6f4b9eeb447d285af093f63d34e0494b3eb9fde6357a2f1e1fddde243a4c4"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.02-161152-f2f429e/nav-pilot-darwin-amd64"
      sha256 "a76e7a6ad8df8493e7df3440dafaddfd72219f02359ba6cffc392dacf187d0bc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.02-161152-f2f429e/nav-pilot-linux-arm64"
      sha256 "6a0487d8b4927052be61d9348be4a0b512bc5896f2cb364ede483d5b15565920"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.02-161152-f2f429e/nav-pilot-linux-amd64"
      sha256 "e61e1737c412a6b734a99e6a5668ac81acb585064fec876142b85487b1b2900b"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
