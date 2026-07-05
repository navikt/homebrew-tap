class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.07.05-162923-5257510"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.07.05-162923-5257510/nav-pilot-darwin-arm64"
      sha256 "6ee09daccfb62cf350250e5a7d480d02214e1da1d7b79aec6ff48b4a2db9043c"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.07.05-162923-5257510/nav-pilot-darwin-amd64"
      sha256 "63b8801ca03123b0e01db1a997652093df22dd4a983f25544465ebf9348753c2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.07.05-162923-5257510/nav-pilot-linux-arm64"
      sha256 "a48349900ea537eee888bf4772885818168984b32726ae05bbb5537d96b05664"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.07.05-162923-5257510/nav-pilot-linux-amd64"
      sha256 "626dfb24876c3df5d18435c93bcf4deca3bda2a3fa3dded9cda09c31df663c0d"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
