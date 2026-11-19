class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.11.19-140525-589864b"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.19-140525-589864b/nav-pilot-darwin-arm64"
      sha256 "8a7d7f45d795aa11e4931ebadf68c905e22ac41b320ac85deb087d9a7cabcbf9"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.19-140525-589864b/nav-pilot-darwin-amd64"
      sha256 "29418fdb70e1f7b7944009254388cc30410568403ab0ad22d719f126f787e5d7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.19-140525-589864b/nav-pilot-linux-arm64"
      sha256 "e578d71ed5f780243edba54c13a454c07e7e2685fbaaa2fd27cb155807eb3ba7"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.19-140525-589864b/nav-pilot-linux-amd64"
      sha256 "ae976026835f9d39072f4ea4576daf2ebc60a0958e65e64c19c05cd70f426296"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
