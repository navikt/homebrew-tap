class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.24-064247-be565bc"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.24-064247-be565bc/nav-pilot-darwin-arm64"
      sha256 "8ff173de6a411b815db7b953b276fec7e4d6796228b72488bc4e88139b1a118f"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.24-064247-be565bc/nav-pilot-darwin-amd64"
      sha256 "9e448f8f1371929df3b4855a96fc1f23c085f16ea82db0bc7ebaa68c7bf03322"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.24-064247-be565bc/nav-pilot-linux-arm64"
      sha256 "44aa844bc7cf73ba282187402c108a706611cc32467418908b04f66bdb5817e9"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.24-064247-be565bc/nav-pilot-linux-amd64"
      sha256 "ef7a7df60e9e351f7d9a156b25a56aa280a3f4ee7013362f02c63525d25773bc"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
