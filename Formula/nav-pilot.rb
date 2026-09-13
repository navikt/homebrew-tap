class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.13-170509-2a76753"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.13-170509-2a76753/nav-pilot-darwin-arm64"
      sha256 "6ce82c0056d6a90405f98b02ee59700849efe369354b0259043d6704e65eba02"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.13-170509-2a76753/nav-pilot-darwin-amd64"
      sha256 "5586ced6fedba5c03385e6885c133558f558b9ed0e6caad87cfa26652fe9d6ad"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.13-170509-2a76753/nav-pilot-linux-arm64"
      sha256 "5f3266ebc67c4084d0ed7e16e7cca20635222c91b753204edc1b0912c67cc2a8"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.13-170509-2a76753/nav-pilot-linux-amd64"
      sha256 "2a2151eab90b7ffbddf39db253579a40d2f24d96b43b2bbd05242e2fab5709f9"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
