class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.04-063742-24ad9ba"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.04-063742-24ad9ba/nav-pilot-darwin-arm64"
      sha256 "8d75cd541f511cbe80b2494ed020eddd227bb41f225efecd12ab489acd2c92a4"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.04-063742-24ad9ba/nav-pilot-darwin-amd64"
      sha256 "2ea6bedde6ab5da6a4040faabb166e08c18dc30114965b527c7a224e70fad09a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.04-063742-24ad9ba/nav-pilot-linux-arm64"
      sha256 "88defa8429648c8a36e483512c0e880b089afc1630169465b059a00c2536b098"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.04-063742-24ad9ba/nav-pilot-linux-amd64"
      sha256 "b86c8d4d0cb079d4c1d242e897d64fc87057f193918ad81b079a9f89215f2339"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
