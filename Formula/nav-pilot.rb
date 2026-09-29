class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.29-132331-ec6c525"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.29-132331-ec6c525/nav-pilot-darwin-arm64"
      sha256 "6c5d1457d698fbe4b89d8ea866c0d7f7ed0d9af5d91f65b3c21c7addb3e63891"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.29-132331-ec6c525/nav-pilot-darwin-amd64"
      sha256 "31dd4a6b1735b03ed686fafa35dc9f4dbbc7008894d5be1170557b2f83cce1ca"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.29-132331-ec6c525/nav-pilot-linux-arm64"
      sha256 "3e3fc98ba89c7f73a170e834c750a46ed19ed7a091fe78cf3fbddde82d6500e8"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.29-132331-ec6c525/nav-pilot-linux-amd64"
      sha256 "9b8e5df2bd952ffd17b75b710a3be4238b53d0a2e45a61a2dbfe3b10eafae7fd"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
