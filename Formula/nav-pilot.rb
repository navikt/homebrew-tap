class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.10.11-112153-9179849"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.11-112153-9179849/nav-pilot-darwin-arm64"
      sha256 "6847257a45830d57e3b6a1c926ea26e729734f80d0bbe5428a9c569c10719b64"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.11-112153-9179849/nav-pilot-darwin-amd64"
      sha256 "2c27ae0e5391917ce1332bc632fe2a933e9c3994e3a1d3a7de6a44e798c7601f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.11-112153-9179849/nav-pilot-linux-arm64"
      sha256 "4f4515566faf59c8775922656538570038e6ca31f09ae03fdb28fd1ee306dbc4"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.11-112153-9179849/nav-pilot-linux-amd64"
      sha256 "406b6d90db2422c1a5f3b490dbf32347508e96975944bd343de7b6e744e02afa"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
