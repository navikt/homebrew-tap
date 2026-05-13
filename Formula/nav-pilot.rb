class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.05.13-124131-a42d43a"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.05.13-124131-a42d43a/nav-pilot-darwin-arm64"
      sha256 "f4f8cf5e0438e8e370b1b5fa0a7e73da7f8a5916f313bccbc58b7b6d0c49f1c8"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.05.13-124131-a42d43a/nav-pilot-darwin-amd64"
      sha256 "2196ae328d01fed4be5d75781b040e3fa8b6c1dfce1a92a1dd0865d6760a55df"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.05.13-124131-a42d43a/nav-pilot-linux-arm64"
      sha256 "09a601a722859ba51a8de32e810857a37d73612217e88fd26b804a2d9279789a"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.05.13-124131-a42d43a/nav-pilot-linux-amd64"
      sha256 "55958b9bbd70e39751e02c5385737f0cd32229b5ca87db2010ba33b3767158e5"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
