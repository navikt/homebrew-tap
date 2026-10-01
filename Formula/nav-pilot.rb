class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.10.01-052651-a775087"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.01-052651-a775087/nav-pilot-darwin-arm64"
      sha256 "49c4516b09402de9b1ee17d37e2ed04de2b783b6aa773376a0757de78e0c8e3f"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.01-052651-a775087/nav-pilot-darwin-amd64"
      sha256 "99ec79f3608f3a569418b78f7232973ecea4fe8b2bccb41d5eea41fc7b3107cf"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.01-052651-a775087/nav-pilot-linux-arm64"
      sha256 "f800e8ce748144f99b726bc413a1a0e7e1a39788db9ce4ba74d07d937d2028ee"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.01-052651-a775087/nav-pilot-linux-amd64"
      sha256 "6de0d44b21a2f26c63a34944d1b72260fe384b56a37548d8f8c5444253d94b3c"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
