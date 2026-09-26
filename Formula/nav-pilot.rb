class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.26-134439-fb9d136"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.26-134439-fb9d136/nav-pilot-darwin-arm64"
      sha256 "0f476d973a942eade26a1a9d4f85a3e783ecd787d192b5b4720b9e36cb1a746f"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.26-134439-fb9d136/nav-pilot-darwin-amd64"
      sha256 "5cf37141b630c98ebe7ee04ffa21463cec29229bf190aa64e4198fdf02d253a0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.26-134439-fb9d136/nav-pilot-linux-arm64"
      sha256 "149367b94ddec996e2d2f8bf63a5e16d58a1d54f4f48403278e976c2e35c23f6"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.26-134439-fb9d136/nav-pilot-linux-amd64"
      sha256 "725a13107c2c374e8602aece1faafa5f94dd17e07e18705c42555f474be9a3ef"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
