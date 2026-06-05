class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.06.05-082958-add16ce"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.06.05-082958-add16ce/nav-pilot-darwin-arm64"
      sha256 "135b04a43602d56e3d181bf0ac206640114a4abc089e5cb7e9167b377cb1c712"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.06.05-082958-add16ce/nav-pilot-darwin-amd64"
      sha256 "0e88c7386e452ccdd0037a794a3470aaea5560d6f6e1b4df9ee3be83d6cf6c1c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.06.05-082958-add16ce/nav-pilot-linux-arm64"
      sha256 "9615fff45d8046b06f02bb2050b32538b796f9b858ba69ef141e36310b6f237d"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.06.05-082958-add16ce/nav-pilot-linux-amd64"
      sha256 "90cd9580857108dd8bd733d9630526feab4cd9419ebba57c691b34127e893cc2"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
