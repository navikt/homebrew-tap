class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.05.28-224025-4579ee0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.05.28-224025-4579ee0/nav-pilot-darwin-arm64"
      sha256 "1395a31d0bdfaa5aa106e86827e11d1c2e46c6de24a803f0faff28468efa4b5c"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.05.28-224025-4579ee0/nav-pilot-darwin-amd64"
      sha256 "069cfe77d8c4af199927461c7e799663fd4c619a3c5714613c2812d5123a5ccd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.05.28-224025-4579ee0/nav-pilot-linux-arm64"
      sha256 "92a1a442618abf50eb2c47d217b0a3429a06222df9709861cdc806141e371525"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.05.28-224025-4579ee0/nav-pilot-linux-amd64"
      sha256 "2faaefc15bf2f05ac1ef4aa1a3df86f2dd5d5ef95972ae888735715ce05b56bd"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
