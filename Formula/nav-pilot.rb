class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.11.20-084902-a0cee8a"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.20-084902-a0cee8a/nav-pilot-darwin-arm64"
      sha256 "d37675f30c6ba13f695edf36d03b23de6ac0ebb7e3a9fedb815e87669a190449"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.20-084902-a0cee8a/nav-pilot-darwin-amd64"
      sha256 "6168707d00116d8c3768547e064c0096cbf2ff6c6e05d224a4e3a8b549161b74"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.20-084902-a0cee8a/nav-pilot-linux-arm64"
      sha256 "2b27edd5675882ac77aeec5a7dfb32f1684fc36a4161648ef59a2eae99fa9fba"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.20-084902-a0cee8a/nav-pilot-linux-amd64"
      sha256 "4e682f04f6e00e6a39d2e2f8fa2aa573e473d2fb1b32c216763863db82cd8452"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
