class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.30-130605-ebf3ffb"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.30-130605-ebf3ffb/nav-pilot-darwin-arm64"
      sha256 "f2890a29ab8b3feab7504554b035b24285c790030cefadfd5f1d555b4d21b8fb"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.30-130605-ebf3ffb/nav-pilot-darwin-amd64"
      sha256 "616d3e612d7a7015bf3096233c9e43ccb93999030fe3a0a3324a66784115c4db"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.30-130605-ebf3ffb/nav-pilot-linux-arm64"
      sha256 "efee994b9fbe5bda1173ca0cec3b8abd799fd4489a4519e7e5ccc54cc2d8bf27"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.30-130605-ebf3ffb/nav-pilot-linux-amd64"
      sha256 "4d760aec4f991d53611a7158c16931e3a78e4c3d4775f6e9a4ef67a607ea7fb9"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
