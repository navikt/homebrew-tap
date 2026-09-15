class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.15-134110-1ab65e9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.15-134110-1ab65e9/nav-pilot-darwin-arm64"
      sha256 "7f896411e3c47c8dd46a1e32f099233fe8ca5ef2b47153d3ce525266ad131702"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.15-134110-1ab65e9/nav-pilot-darwin-amd64"
      sha256 "bec35b648d0ffca18c113087ad24706b245da27205762b7f962f5ebdabb8f1e5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.15-134110-1ab65e9/nav-pilot-linux-arm64"
      sha256 "0d3f15e6c96893b704fe95497046fe2b95dc4235064eb1c27ccd3fbf1826cea9"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.15-134110-1ab65e9/nav-pilot-linux-amd64"
      sha256 "c157aae3a7a7f8c9da6408423180fb750b4799d1b2738ba9f0477ae463949519"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
