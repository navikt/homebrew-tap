class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.04.17-112335-8463026"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.04.17-112335-8463026/nav-pilot-darwin-arm64"
      sha256 "a6517fafd666445cd8184c2539aa70bec5113bcf1aa423ef5a84b39bf381e851"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.04.17-112335-8463026/nav-pilot-darwin-amd64"
      sha256 "806c449e3e1eff3cf591e0db1319466ba324afa33d19efc71422f05d96392800"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.04.17-112335-8463026/nav-pilot-linux-arm64"
      sha256 "f55dc59b0462b9f03faec501085ff077a7306f20da94c2677e616ec78c16f73b"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.04.17-112335-8463026/nav-pilot-linux-amd64"
      sha256 "468a3ef306b56b113714cc0e112abb1da5acc80009c34dbe3fc30e58866e87d0"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
