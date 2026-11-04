class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.11.04-221952-0b85e3a"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.04-221952-0b85e3a/nav-pilot-darwin-arm64"
      sha256 "35153838fde1fb2bae464023dc27ffd2826d5a7ab7fa52147b754da7e0aa526a"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.04-221952-0b85e3a/nav-pilot-darwin-amd64"
      sha256 "d80e33053815f24b7a051e1657915d0cdb0fb4b5d9adf9a91b1b1f7e0ca1575f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.04-221952-0b85e3a/nav-pilot-linux-arm64"
      sha256 "7196de80ae56a9dfb3c7ce9a4df1ba6b55eb3e3866ddd281001fcee9ae7a963e"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.04-221952-0b85e3a/nav-pilot-linux-amd64"
      sha256 "ba2e954009f0577bea01e0839ad522d540a0cb332bcccf7f125cf2f86515e362"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
