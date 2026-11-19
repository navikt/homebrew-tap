class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.11.19-210045-2516a8a"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.19-210045-2516a8a/nav-pilot-darwin-arm64"
      sha256 "b7fb7746a0a6c2135579a32bbc7a19a95b81192a38d0aa2d75049cb651a86dff"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.19-210045-2516a8a/nav-pilot-darwin-amd64"
      sha256 "ce12e0c27f733db89fdd61940e4aa5f8372cdacc156cfbfeb1ea12c42d207c71"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.19-210045-2516a8a/nav-pilot-linux-arm64"
      sha256 "eaf849b69e7ddbdc21e4d7dc069a1430db4d7e9bed4206f3b26f346041763e9e"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.19-210045-2516a8a/nav-pilot-linux-amd64"
      sha256 "df730efae20f41e617b8e7d2850894928aaeb4f747c3054fe4a191bb8df2502f"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
