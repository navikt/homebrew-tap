class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.29-221653-eb6b792"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.29-221653-eb6b792/nav-pilot-darwin-arm64"
      sha256 "c829422b84195cc5521f14280b29a8cb7e13fc1a61113b8c4e6c79f3585a4b46"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.29-221653-eb6b792/nav-pilot-darwin-amd64"
      sha256 "b1f5e042d1db7cb1ccaa3a7cdb53f7b795064afea16619f6a539de04cce42260"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.29-221653-eb6b792/nav-pilot-linux-arm64"
      sha256 "5ca0f959570f271602ebd2b9092d9e3bcc5fa82eaca9e0519e2e540922068df9"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.29-221653-eb6b792/nav-pilot-linux-amd64"
      sha256 "5e6add554b122233ca489910c14119b812677f9c269e653f346a353b480fc39b"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
