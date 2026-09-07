class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.07-144112-4a39e6a"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.07-144112-4a39e6a/nav-pilot-darwin-arm64"
      sha256 "f8585335b07f72b3f6a2a09061b7c0844e60277ebb7e889dd697edc603c2edc9"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.07-144112-4a39e6a/nav-pilot-darwin-amd64"
      sha256 "7a6ab251f24110a2c83062b3ab2f59d346fec9a5b58ea43656febb7edf289080"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.07-144112-4a39e6a/nav-pilot-linux-arm64"
      sha256 "6a9ca2daf78741116be88a1e83f76af84ef817f807db4e1cd616ea745d1901e8"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.07-144112-4a39e6a/nav-pilot-linux-amd64"
      sha256 "fe1b8f17406f225cf09d975e2ab6739b2f25e0efa11c063b12178185f1a6b5ad"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
