class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.10.07-114411-f5706bf"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.07-114411-f5706bf/nav-pilot-darwin-arm64"
      sha256 "48ac4ede4622be8d922573c7716ba4f7bced08c3f783d3c7c69265ef54a4f417"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.07-114411-f5706bf/nav-pilot-darwin-amd64"
      sha256 "3de46e195ea314228cf865234d09aa18f555892cf5216106af97f10c8886b34e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.07-114411-f5706bf/nav-pilot-linux-arm64"
      sha256 "8f6c43e978a7fa688f4d64197d96b14913216124fb572bd59af45bdb06fcf017"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.07-114411-f5706bf/nav-pilot-linux-amd64"
      sha256 "820ee167b2292e5bd3a03996d86f96997db50e60bae64dcca7335c1c39c8517c"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
