class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.10.23-145321-a2efa5c"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.23-145321-a2efa5c/nav-pilot-darwin-arm64"
      sha256 "6021da682bd1742463afe4838de09f9bff46110dd5e57a9055f299d848eae864"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.23-145321-a2efa5c/nav-pilot-darwin-amd64"
      sha256 "1fbc52b1da5bdcf1f574661bfde077912a1eb000f8fb00a9a15c150e025419c4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.23-145321-a2efa5c/nav-pilot-linux-arm64"
      sha256 "7d1f004838e44cc5a423fe8dfdc28db45cb02510f74391a8bc7d1902198d2116"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.23-145321-a2efa5c/nav-pilot-linux-amd64"
      sha256 "492515e06488532fd8c7485b6d4670bc890722779fe6b9d32f45e2559ba0f039"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
