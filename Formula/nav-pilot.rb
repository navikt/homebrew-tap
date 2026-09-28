class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.28-075015-7a29eaf"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.28-075015-7a29eaf/nav-pilot-darwin-arm64"
      sha256 "71347e39716df9755eb60c13a9c485218076937a29fced9a5ec6675545d0fda1"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.28-075015-7a29eaf/nav-pilot-darwin-amd64"
      sha256 "f5296f907359c524c4758fd31b92093a7060f082e1c212706408fa9f89b9c29b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.28-075015-7a29eaf/nav-pilot-linux-arm64"
      sha256 "8616d6376b329c83b4a43adad7c2a6293a166b59c42adcb986441e0c2b274ffb"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.28-075015-7a29eaf/nav-pilot-linux-amd64"
      sha256 "bff8d0a78567f215a220eeaf17167b79105c51350e0cab34843733e29486e8c5"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
