class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.06.15-112356-d2d34ad"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.06.15-112356-d2d34ad/nav-pilot-darwin-arm64"
      sha256 "1693f47f50a953c03d6d36742867cf77de2bff0c507ef52363f82040e9feeba7"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.06.15-112356-d2d34ad/nav-pilot-darwin-amd64"
      sha256 "baafc6d1096ed5ddca651286b9fe4367b57dc7f62ec0c6e9e4a83474520e7a8c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.06.15-112356-d2d34ad/nav-pilot-linux-arm64"
      sha256 "5bbfd4f86e48eaa9b1288ad631908eef7a0acf05f4eba8a113fb60f51a50c7e7"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.06.15-112356-d2d34ad/nav-pilot-linux-amd64"
      sha256 "2591c5044daa0630e8ce39bcccc61b952ebf036e4ff08f96f912d2fac6012abb"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
