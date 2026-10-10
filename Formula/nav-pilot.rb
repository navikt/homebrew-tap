class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.10.10-231728-7f8baad"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.10-231728-7f8baad/nav-pilot-darwin-arm64"
      sha256 "bffa7157081c2f980bc4d4f19eb59f5ef846d8862a92cf5ed86dcc499bbe3b03"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.10-231728-7f8baad/nav-pilot-darwin-amd64"
      sha256 "f3429df36fc43d698590bf84df1efa70438bb399ee8bf98cbaadd73af6269c9a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.10-231728-7f8baad/nav-pilot-linux-arm64"
      sha256 "1fb9282990b4cbc7d829da42f8c816faaf6df0da887c8ce028e55d940db188e1"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.10-231728-7f8baad/nav-pilot-linux-amd64"
      sha256 "df77db5e5bd77d53c9a1a6a4be5b23afa903dbe24170a7a12384b66f081cc734"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
