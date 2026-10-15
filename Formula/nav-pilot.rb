class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.10.15-104854-f55d019"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.15-104854-f55d019/nav-pilot-darwin-arm64"
      sha256 "3e3ce91b2303a2e0ae29167d6a8a2c12cfbd7bb9bb6c6af4f9ff7f323f3b1f9b"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.15-104854-f55d019/nav-pilot-darwin-amd64"
      sha256 "4b1fabadc5a741b5b901048551838f10791963e608187556426e657b82b387c7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.15-104854-f55d019/nav-pilot-linux-arm64"
      sha256 "a584858af9087829c87e7b84a3274809a30da7bef01be2e693989b7f5618cf93"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.15-104854-f55d019/nav-pilot-linux-amd64"
      sha256 "66ab0a03524f9284fcfac974fcbc57fbffd56075af199f4bc15426f4665addfe"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
