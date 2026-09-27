class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.27-220858-091d3cf"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.27-220858-091d3cf/nav-pilot-darwin-arm64"
      sha256 "3411d2d8536e32d8dabb431fed829c1a4c8e984c9341d3b1a0563c1c5e54cd06"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.27-220858-091d3cf/nav-pilot-darwin-amd64"
      sha256 "407507d8101160631db5c90266dfe4161a4d94fbedef2adfdfa68f473056397a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.27-220858-091d3cf/nav-pilot-linux-arm64"
      sha256 "757e3077ce92c96254bbc4b184eb7f3d90f157181b376ffc283f1447a89cd02e"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.27-220858-091d3cf/nav-pilot-linux-amd64"
      sha256 "159e9608fcc099ded63dac64f8810f3f69a382d2aabd025a2382218a6b65a912"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
