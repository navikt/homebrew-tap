class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.10.23-112949-954b454"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.23-112949-954b454/nav-pilot-darwin-arm64"
      sha256 "e380a52a29a7ef8a120faefb9b5d45c576b449964fe3fe65a031212d30305000"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.23-112949-954b454/nav-pilot-darwin-amd64"
      sha256 "059870c8673411ee946ba7f93e0c892cf350b46d55fc4bc0834e4301a878b6ce"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.23-112949-954b454/nav-pilot-linux-arm64"
      sha256 "7124693f08ce1af29a336638d12ac3cebf53cc4ddf85227240d21f032203c586"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.23-112949-954b454/nav-pilot-linux-amd64"
      sha256 "9046a31cc560c912ae17e65162d7418fd42dcced721412f25dc1c4cf060495ea"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
