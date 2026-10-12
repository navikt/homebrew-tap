class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.10.12-222129-eb035cf"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.12-222129-eb035cf/nav-pilot-darwin-arm64"
      sha256 "b62bb4c25d2131d7e1f496c1ec564121e67a25728f4bb2bbc5643745a7f8a549"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.12-222129-eb035cf/nav-pilot-darwin-amd64"
      sha256 "dd5d353a6a096e4cbc6815eb4fc7ebb889193dc8b64f0e096b8d0812a80ff232"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.12-222129-eb035cf/nav-pilot-linux-arm64"
      sha256 "10d36a98fc36c663ca6993e814dcdf08d6e802743264d419b6d4751be49d5cd0"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.12-222129-eb035cf/nav-pilot-linux-amd64"
      sha256 "429ca33cf209ba1ac7f1c4a5721ced168d73c2d019e01e9591b9f7aa79d11685"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
