class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.10.02-091742-36b75ce"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.02-091742-36b75ce/nav-pilot-darwin-arm64"
      sha256 "03d786dc5a43519c264ba76ef96d0f09a5794f34281e46546268435abff24c29"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.02-091742-36b75ce/nav-pilot-darwin-amd64"
      sha256 "8e8a5b1a2203d2741b9b5e2cbd5c314a1b27b75924f367180eeef58c4eda99ad"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.02-091742-36b75ce/nav-pilot-linux-arm64"
      sha256 "e9b259c2983ace4a2b662eb16e3320d6faf7e9455877eff78fc71abc541903fe"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.02-091742-36b75ce/nav-pilot-linux-amd64"
      sha256 "7a51b573ee66f5886a613433d9caed1955542396ac1e1331fdc863875f26547e"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
