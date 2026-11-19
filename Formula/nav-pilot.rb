class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.11.19-130856-d891994"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.19-130856-d891994/nav-pilot-darwin-arm64"
      sha256 "dfb6cecee4c619f451fe0293d34cf617b725dd49f70fc0f051bdf2ef600db82a"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.19-130856-d891994/nav-pilot-darwin-amd64"
      sha256 "d3185761a6b2e89e257faa529ebf80ab45991d2f4a459f7d1fb36cdaa11a4363"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.19-130856-d891994/nav-pilot-linux-arm64"
      sha256 "532c147add9ec64790878d5dc66abf6585e3921b10a492d6ffe33dabb42563fb"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.19-130856-d891994/nav-pilot-linux-amd64"
      sha256 "d8f647674b66df8056a9e93ccd57f2e69d390e1b7ef7d4ed0b293ae3a5833756"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
