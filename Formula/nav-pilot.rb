class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.26-162440-dd859ac"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.26-162440-dd859ac/nav-pilot-darwin-arm64"
      sha256 "8eb877c730237d64120a15eb056644a0c419127dc7f9eee509e400d6bd6ab86b"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.26-162440-dd859ac/nav-pilot-darwin-amd64"
      sha256 "3af40c99eb475a5fcb8f0a0ba766a34bda2e28259c27c251eec59fc2cacb0667"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.26-162440-dd859ac/nav-pilot-linux-arm64"
      sha256 "8a9e6cd460208b2abd1ab39aae7b15e9925da1a4144266a1dde75bf17b55f2f7"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.26-162440-dd859ac/nav-pilot-linux-amd64"
      sha256 "9459d29c251c25ec3d93f142efad76256d913ca60270c2e577f9bd4ad9d81637"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
