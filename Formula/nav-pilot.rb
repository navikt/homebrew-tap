class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.10.14-155622-7fb753c"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.14-155622-7fb753c/nav-pilot-darwin-arm64"
      sha256 "6da381749419e2ffe604c978f6de0279a826818c038c963d0b2e8c069eac1162"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.14-155622-7fb753c/nav-pilot-darwin-amd64"
      sha256 "b6e676b1cd5551b92d96aa73f03cb17125e2a423473695e785d10bfc9d447481"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.14-155622-7fb753c/nav-pilot-linux-arm64"
      sha256 "1556d9daf49be514073ecbc14b745479aa6bcf2be4c35da3cf27fbe06e18315f"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.14-155622-7fb753c/nav-pilot-linux-amd64"
      sha256 "07e7a6f73f1d0b58ed33b28238c811a1061c40ac73e360d4ce8649d90369a90f"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
