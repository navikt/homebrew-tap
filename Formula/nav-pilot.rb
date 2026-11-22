class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.11.22-213601-500cc6a"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.22-213601-500cc6a/nav-pilot-darwin-arm64"
      sha256 "a20a743a3895f668103f746f0c9cb91a04ef67cadef2273b5f4f3ed63fbfc9a8"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.22-213601-500cc6a/nav-pilot-darwin-amd64"
      sha256 "fa614111651ccc8fbd1f8cb7c9d16f4a1e817918b071d4e9fd79b61cfbd644d4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.22-213601-500cc6a/nav-pilot-linux-arm64"
      sha256 "b4307e8ebca68bce4dd44bc58fbb5492f96ef73ea9160c76baf15fa10812a931"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.22-213601-500cc6a/nav-pilot-linux-amd64"
      sha256 "bea84b00135d6e471b4da5de6caf4f7abfd01092015fdac836b66ba0708fd034"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
