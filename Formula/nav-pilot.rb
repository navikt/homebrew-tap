class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.10.25-034335-3e799c9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.25-034335-3e799c9/nav-pilot-darwin-arm64"
      sha256 "9366cc61f0dd7cec816e4420324ca56bfbbe740cbd5989ed8b7089802a1a445d"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.25-034335-3e799c9/nav-pilot-darwin-amd64"
      sha256 "27bd236b8aa4063473b92151b54a3a4b5cc5cb207fea900eacd1fd7446c5ea3e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.25-034335-3e799c9/nav-pilot-linux-arm64"
      sha256 "60b963614ab816f6b62f1a2aaadb77b7dea30e4abba7f3d9551426ffbe0a59c4"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.25-034335-3e799c9/nav-pilot-linux-amd64"
      sha256 "c075258d8f4e48337b6ea6eb06ff1cff374b8d026bf8434ddfbe0ad07d33b423"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
