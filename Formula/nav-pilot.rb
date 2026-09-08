class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.08-172734-8887302"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.08-172734-8887302/nav-pilot-darwin-arm64"
      sha256 "d4a02a5ea564710afac854d4ef202b7ca0b0c0c37b476b9103ecc088db178099"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.08-172734-8887302/nav-pilot-darwin-amd64"
      sha256 "d373e744c988a8d60f776f9e2d5dd47ed5d4078cdb5281dd01c5220eb784041d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.08-172734-8887302/nav-pilot-linux-arm64"
      sha256 "239cc62ff4cda7e2b201586bf6430b4e4acf1969fa460e60c31524bf019c2f3d"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.08-172734-8887302/nav-pilot-linux-amd64"
      sha256 "3c6603616722c6e057368db7ba07ba500f3d5a893e8a70cae4d0483d0dd39acc"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
