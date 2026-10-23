class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.10.23-075437-659806b"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.23-075437-659806b/nav-pilot-darwin-arm64"
      sha256 "038f41d48583736ec1f41e4d5419d6c8f91e6a6838877370e310248680503fed"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.23-075437-659806b/nav-pilot-darwin-amd64"
      sha256 "03af5dfe863687b524c725d0deda73c719bdcec9e000c755dbed1145d242d278"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.23-075437-659806b/nav-pilot-linux-arm64"
      sha256 "abbe867b76d06a320b55cea14215beb682720f47c1a236b83d59699d95230c8e"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.23-075437-659806b/nav-pilot-linux-amd64"
      sha256 "d4d1de90d445faf9be8e2019b193deb613c06c9ef37b3aa649f427f74a70bb5f"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
