class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.04.18-211516-38e1d47"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.04.18-211516-38e1d47/nav-pilot-darwin-arm64"
      sha256 "c214576189c5e26848f807f974bc16b9a0662eb0e664a26a6725aed916118413"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.04.18-211516-38e1d47/nav-pilot-darwin-amd64"
      sha256 "ae4b8864dc373ab17e937569c68c13bb26f09b694d528fe4d147c39cfabbfefe"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.04.18-211516-38e1d47/nav-pilot-linux-arm64"
      sha256 "a5c15aa939334710f90f7a022628569433ad2b0eea33ab5d61df9c5bbbe7dde3"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.04.18-211516-38e1d47/nav-pilot-linux-amd64"
      sha256 "32e5c4e38fe3ad652399a96d4399e2b84681634932cfbba16910196255da7446"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
