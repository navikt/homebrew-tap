class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.06.19-111626-5e3d3eb"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.06.19-111626-5e3d3eb/nav-pilot-darwin-arm64"
      sha256 "17730c06eeb99d0fbb9c4c85efdbca9663fa152ae7061150ae2b785c663f77dd"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.06.19-111626-5e3d3eb/nav-pilot-darwin-amd64"
      sha256 "a329f43f61c403694fb2d4a090995763f89c26a8633a022bc088fcf09486d149"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.06.19-111626-5e3d3eb/nav-pilot-linux-arm64"
      sha256 "6958b2c04c3ac615715e27f5fdb95a03c67aac499ed7d404e6946dfb210fd90e"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.06.19-111626-5e3d3eb/nav-pilot-linux-amd64"
      sha256 "7cdabc0d9e582496cea1fdd611df8a264cbb21cf8c95032a03204cd2d39603bf"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
