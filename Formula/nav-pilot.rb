class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.10.14-121414-d9fccb5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.14-121414-d9fccb5/nav-pilot-darwin-arm64"
      sha256 "d38cb14f112cd585bbede056038dab392a42d82554369be6f715901cfbcda53f"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.14-121414-d9fccb5/nav-pilot-darwin-amd64"
      sha256 "187ee97390cf620635e5eda69df1b2862e43700d43696080533ce2eee344554a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.14-121414-d9fccb5/nav-pilot-linux-arm64"
      sha256 "4afa4a10dee4d6206e4509484030f7103475d85661034754ccd8cac6980998c2"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.14-121414-d9fccb5/nav-pilot-linux-amd64"
      sha256 "ec0e154c23c1c28fa39b730ae8cdd76c43543d6abffe3dbf307dbcce01f5a5c2"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
