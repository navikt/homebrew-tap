class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.12-200056-122e5e1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.12-200056-122e5e1/nav-pilot-darwin-arm64"
      sha256 "13a4e818e8f8220c87ed1b972790ad37fddf3501aea483bf68a6375744b453b0"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.12-200056-122e5e1/nav-pilot-darwin-amd64"
      sha256 "963cda72e9cfb3b8158aca74cc15af389af45e9eb30ec69ea764972b2d62b726"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.12-200056-122e5e1/nav-pilot-linux-arm64"
      sha256 "995f31aaeaf7366616f53af04d73d588236d7335e16c38563d414d3b8fb2c938"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.12-200056-122e5e1/nav-pilot-linux-amd64"
      sha256 "dc2201d35f4e8ddd1273c19f3c1e3911c2d0b74a8c1ca035aa65cc0792d8c405"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
