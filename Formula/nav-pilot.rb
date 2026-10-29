class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.10.29-144316-8eb88c5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.29-144316-8eb88c5/nav-pilot-darwin-arm64"
      sha256 "1bc869e60ded4d85dc69e5e4c5819dbda0426471217e32b8fae1cbbbd97b1ba5"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.29-144316-8eb88c5/nav-pilot-darwin-amd64"
      sha256 "f0b163b4953d41c6c0792c7e438c44bc35138c9072038ebdfe36f2a2c1beeff9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.29-144316-8eb88c5/nav-pilot-linux-arm64"
      sha256 "ac6b2077d7e76b30ab837d025150bb845f0fd27077b3ce0572e132d4f0f25632"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.29-144316-8eb88c5/nav-pilot-linux-amd64"
      sha256 "55ff66d3b8a3c6cf7e0c476df12d3f2955d813152b0c128dc27f4dfcd08c1971"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
