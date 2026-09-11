class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.11-094828-baf3c85"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.11-094828-baf3c85/nav-pilot-darwin-arm64"
      sha256 "8d705dcd66b7569a08cf5084208b309c56c0b2d344dc376a32b88c05ad2b524d"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.11-094828-baf3c85/nav-pilot-darwin-amd64"
      sha256 "0a4ba80c173edb7e64dd79289a4c523e7e456e1b057bf2a5f9c4bfae01ac4ecc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.11-094828-baf3c85/nav-pilot-linux-arm64"
      sha256 "395065a0a0b5f8cb875c96abb46888c339cfd7b776d2317613ffa40d4f87a124"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.11-094828-baf3c85/nav-pilot-linux-amd64"
      sha256 "aef6587f73f4589873f5896a2d02864cd28c56b5568fd26b2cd284d5ba82b23a"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
