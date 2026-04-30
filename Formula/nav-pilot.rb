class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.04.30-060155-de73ce6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.04.30-060155-de73ce6/nav-pilot-darwin-arm64"
      sha256 "d1a2965b4b3e95321d2552aefe377cda89ee463bdda21b3e6afe13ae1f92b05f"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.04.30-060155-de73ce6/nav-pilot-darwin-amd64"
      sha256 "b68475d6da814015eb8525321d831ff5ad2fbbbb1e5320d6ea9ec5b6d4b17a34"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.04.30-060155-de73ce6/nav-pilot-linux-arm64"
      sha256 "d2087a2c307755d05a3108323c18a25fd7876fdd8e2da54085e05a1a05872edb"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.04.30-060155-de73ce6/nav-pilot-linux-amd64"
      sha256 "dd02e34a93da93a6faf579a7ba6b28f5381dc4622dfb3cfebee8d1ae8226cc58"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
