class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.06.02-095814-6d4adbb"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.06.02-095814-6d4adbb/nav-pilot-darwin-arm64"
      sha256 "62ccf451ff6cb222a1a7d346281d646d2fabc255511c01a9ecda64f2fed58aa9"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.06.02-095814-6d4adbb/nav-pilot-darwin-amd64"
      sha256 "9c2f53f94916f93583f4c0a75cab45f142fb12f4d46a4e69efe02368943aaa3a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.06.02-095814-6d4adbb/nav-pilot-linux-arm64"
      sha256 "a9a48594d400d94aea79ed99f6d05a925b9a186e0f64f45e361a7143701793de"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.06.02-095814-6d4adbb/nav-pilot-linux-amd64"
      sha256 "47c953935b229263dc33221d82d2905c015c0c29f3e278fc85fa59f96c44e852"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
