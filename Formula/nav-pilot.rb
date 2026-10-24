class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.10.24-205149-fbfb6f9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.24-205149-fbfb6f9/nav-pilot-darwin-arm64"
      sha256 "83f2340b267c0a32b5553b9deeaba9adffceabc42ae348dfdfff5a9dbfc7290b"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.24-205149-fbfb6f9/nav-pilot-darwin-amd64"
      sha256 "ebc7da83a6c4e6f17ae81e4ab234b8ffeb9e32bbe54b9d30cc0124c9a7e3d4b9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.24-205149-fbfb6f9/nav-pilot-linux-arm64"
      sha256 "b638769c59d271f60df0f6c44e9ebecb29e93f03ab1af1ed0273bcbacb773b86"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.24-205149-fbfb6f9/nav-pilot-linux-amd64"
      sha256 "e0155de6b197182c901885428a2600627807f38d1525fa2cff5a0c9a6c249edf"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
