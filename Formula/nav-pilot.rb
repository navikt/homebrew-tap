class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.25-081337-49bd340"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.25-081337-49bd340/nav-pilot-darwin-arm64"
      sha256 "238db3f40b0ffe8e926c104c6df620b35aa5dbcdb019e2a04b2b930a9563f84f"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.25-081337-49bd340/nav-pilot-darwin-amd64"
      sha256 "5d5998fe731d031cb9aa01c8e28758d2f188d62f1d158c837c8385c77d24faed"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.25-081337-49bd340/nav-pilot-linux-arm64"
      sha256 "5bc718959fa9f369e5f87af3dcd48a1cadbecc341b164f37b9bc2738f443957e"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.25-081337-49bd340/nav-pilot-linux-amd64"
      sha256 "38e4c0600aa5c2a2695e505f984697dd5941ebcd3700bb550ac5a0f90611e8b3"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
