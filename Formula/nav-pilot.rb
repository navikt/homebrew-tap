class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.07.21-103109-46f8f8e"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.07.21-103109-46f8f8e/nav-pilot-darwin-arm64"
      sha256 "9a701fa35b86ea82bd24acbbcdb199d495f10b38d2014344c7446bdf18dd3381"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.07.21-103109-46f8f8e/nav-pilot-darwin-amd64"
      sha256 "a2e724449368908d6c0d53283d648ae20788a638091ef07f6736f204cbaa2469"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.07.21-103109-46f8f8e/nav-pilot-linux-arm64"
      sha256 "357755fab108a8d4fd73ebcf89c2ea500f85b67e37f35b906dd634850320a5f1"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.07.21-103109-46f8f8e/nav-pilot-linux-amd64"
      sha256 "0d445aa77181fce4c0c2fc74447a9b5da2242a16333829655f31e598f27fc757"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
