class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.08.27-060600-e807a51"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.08.27-060600-e807a51/nav-pilot-darwin-arm64"
      sha256 "2c6e87c1bc8bb85652331e0fe1bafdae4c29a6e57b11d2560b976a0731250263"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.08.27-060600-e807a51/nav-pilot-darwin-amd64"
      sha256 "55daedc2874af8fd6cb4fb0f4e14527da7fe406e793d896b793a9d9b26682d82"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.08.27-060600-e807a51/nav-pilot-linux-arm64"
      sha256 "4a565169ebdbe2c490a121941479335779898cc4de84b952d98814bf39d480ab"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.08.27-060600-e807a51/nav-pilot-linux-amd64"
      sha256 "5ce9a143845833fe337a8c01bbef35062faa28b722a826ea5c720333c9ae63e5"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
