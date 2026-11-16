class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.11.16-091444-b16eeb4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.16-091444-b16eeb4/nav-pilot-darwin-arm64"
      sha256 "ef6277796c4f3575928197eaf79907db97ae451f9b3c0f7603eb07fe82248cd0"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.16-091444-b16eeb4/nav-pilot-darwin-amd64"
      sha256 "88dbe6a81ecfc62d826a33ad5aa530880f7e4f8438e63bf4809d6caa7d4ee9e4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.16-091444-b16eeb4/nav-pilot-linux-arm64"
      sha256 "6a743c3a1d056c4e973f18e640a782c7ae29b5e4b3c6a03771e36c0ba3a7fde3"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.16-091444-b16eeb4/nav-pilot-linux-amd64"
      sha256 "0f980975a01ddb04cf52c17d85b577736f4e9cd175c439599a99a48319bbf13f"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
