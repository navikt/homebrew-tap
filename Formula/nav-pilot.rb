class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.04.17-094035-b7e67ec"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.04.17-094035-b7e67ec/nav-pilot-darwin-arm64"
      sha256 "3739ff896e7e675b08f88a72d74d2d310a14ee05dbda299807fd4e8252d7c5dd"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.04.17-094035-b7e67ec/nav-pilot-darwin-amd64"
      sha256 "65e373154ebfe702530a39a730b9acd979d32f4f132a6bf7551c7c7aaebfe35c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.04.17-094035-b7e67ec/nav-pilot-linux-arm64"
      sha256 "31f89eb01fd9a7e66be36f19f5e470dd7506ab9a4a1d2fd0d78c2cb859ce5271"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.04.17-094035-b7e67ec/nav-pilot-linux-amd64"
      sha256 "cea97ff33a8e613a1326ed05b8c621e7d447370e5ec96ee98c785a4b41497f55"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
