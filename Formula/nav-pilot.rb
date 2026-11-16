class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.11.16-142147-407b726"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.16-142147-407b726/nav-pilot-darwin-arm64"
      sha256 "b25b3e3d968792c34749bd242974bada81ccf50edb5897027853391bcafb824d"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.16-142147-407b726/nav-pilot-darwin-amd64"
      sha256 "2a54025db09d54e4c968417e2c3bab5b62b8431af06a185b4f13be22075c5479"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.16-142147-407b726/nav-pilot-linux-arm64"
      sha256 "47195e606894151e7910d54b563da39899cba5dd92905c70c124ff9e5e63329c"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.16-142147-407b726/nav-pilot-linux-amd64"
      sha256 "10765f48ad6b188c807ca2e4493562a5c81163f95e23e7f12891be03bf39467a"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
