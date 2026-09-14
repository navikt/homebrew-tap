class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.14-103344-fcf3ed0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.14-103344-fcf3ed0/nav-pilot-darwin-arm64"
      sha256 "9c6b7005698c93381f40cae75e50ac0d579190dd37c43033672b60e9ad530223"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.14-103344-fcf3ed0/nav-pilot-darwin-amd64"
      sha256 "58c3ac5dbad701e097747179f7528ab270bae6013d8834892cb6946a0f259fa5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.14-103344-fcf3ed0/nav-pilot-linux-arm64"
      sha256 "6ffb0ed6bb9aff47ab18c9577ce858bfa21a3653f1d727f077406680d9849108"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.14-103344-fcf3ed0/nav-pilot-linux-amd64"
      sha256 "a941ad36752e8189734e9ae0d51fbaba330d59fd5543f14a5ae624ff953d5820"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
