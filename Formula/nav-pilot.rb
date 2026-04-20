class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.04.20-182232-2c0ddb0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.04.20-182232-2c0ddb0/nav-pilot-darwin-arm64"
      sha256 "aea742f6614739b062ece3ce20a4d89a1e2b59eada6ddf29bea64f341d4007a0"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.04.20-182232-2c0ddb0/nav-pilot-darwin-amd64"
      sha256 "324998f259219c011874349bebca0daf069d8b5697649f252aca5eb87a65dcab"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.04.20-182232-2c0ddb0/nav-pilot-linux-arm64"
      sha256 "0329f6137826545315583643ce2549f189f3e7d0cc8d9f994e71f12dd269c58e"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.04.20-182232-2c0ddb0/nav-pilot-linux-amd64"
      sha256 "85e9cef102faafd3422900e70ead4abc21d44c8049b9d33458d8decbd3a53d2d"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
