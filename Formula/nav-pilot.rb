class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.11.18-212846-172293d"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.18-212846-172293d/nav-pilot-darwin-arm64"
      sha256 "d4c0b6289c72d707c9fa5b2f516b3d4dd3afed844e89195d1eb72387937b14c3"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.18-212846-172293d/nav-pilot-darwin-amd64"
      sha256 "4889c12fab8c708c16822ef9d226d41ebefcecbb3dc23b3f1d4e02540be58ea6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.18-212846-172293d/nav-pilot-linux-arm64"
      sha256 "9d3a56185f50874b97cbc2a35ab83188c8ac9c3b00406b9ef8099fa84bb5e2b1"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.18-212846-172293d/nav-pilot-linux-amd64"
      sha256 "3521a496e6932f76226e404a0daf9446e6f85d5e38b07a374bc05113fea409a4"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
