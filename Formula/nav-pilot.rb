class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.10.08-090949-a22a8a6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.08-090949-a22a8a6/nav-pilot-darwin-arm64"
      sha256 "fbed97a90569b0e554da211fff6dff34acbbd4b6b9a769ddb5123a25e73f79e2"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.08-090949-a22a8a6/nav-pilot-darwin-amd64"
      sha256 "29f3b3ef62c3ac49a807fde9c3418626b23fc7b41456af0cbc30bca91ad53ec1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.08-090949-a22a8a6/nav-pilot-linux-arm64"
      sha256 "b9f6d4c40441ee1eb7d251cddafb41b105a781dc6a70aff156a41f24dbac13a4"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.08-090949-a22a8a6/nav-pilot-linux-amd64"
      sha256 "41be0bdabf198ab841075bd892eb32df118f757f915cd8dc5ff9b46245bf9c5e"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
