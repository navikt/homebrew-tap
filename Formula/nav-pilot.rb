class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.03-063650-876cc7b"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.03-063650-876cc7b/nav-pilot-darwin-arm64"
      sha256 "ba8e8c02e4fade723c6348026b6de27cec68844c92450904e0f504c9d080dc2a"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.03-063650-876cc7b/nav-pilot-darwin-amd64"
      sha256 "6b2453c7a2476347c168a74643ff09d1880dda3fa952caf0d4975859ea863060"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.03-063650-876cc7b/nav-pilot-linux-arm64"
      sha256 "1edf5271178f160851e2b5d5d94332a95fe070c714cbc3bb6eb0693f6419b4a2"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.03-063650-876cc7b/nav-pilot-linux-amd64"
      sha256 "1936fddff053d1d2ffae76d26590b3ec6551e2ef33e163bb676f4a969a4e90a6"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
