class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.06.09-191141-06a0358"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.06.09-191141-06a0358/nav-pilot-darwin-arm64"
      sha256 "1f1a28be8a0e36b50249e6e5cd50513a9dd033b3c57179f53c309f42d9af33a9"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.06.09-191141-06a0358/nav-pilot-darwin-amd64"
      sha256 "0fd46c5167a8ffb7d255a5d7b3731b3e50d58ee7a1718213f5814af2442ddc97"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.06.09-191141-06a0358/nav-pilot-linux-arm64"
      sha256 "428e1b68ae5b606f73f56c35c61d9c0309717622e873c4518f5be83b5e290c92"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.06.09-191141-06a0358/nav-pilot-linux-amd64"
      sha256 "4637b1baa90e08e678f5cc3446fb9096026302fc612ab84328c632db9a5bcc56"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
