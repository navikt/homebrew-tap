class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.05.30-092315-0d88c99"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.05.30-092315-0d88c99/nav-pilot-darwin-arm64"
      sha256 "f0177cba546d2e926b03dc0427d4f3af404b9bedaa099cf726c27689a56b77f0"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.05.30-092315-0d88c99/nav-pilot-darwin-amd64"
      sha256 "33bef685945c20481c6c77983999aa57b94633f063139ae5f0912b28b5a69591"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.05.30-092315-0d88c99/nav-pilot-linux-arm64"
      sha256 "198a10f06669b6fddb02054fddf8346143775757d6f783cfcedbb5458c3a27f6"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.05.30-092315-0d88c99/nav-pilot-linux-amd64"
      sha256 "ec500c1e825685eee590145845362f9f88c0f015ded8b5180fa5b9f1a6ea5dd0"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
