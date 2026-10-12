class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.10.12-132622-b039d68"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.12-132622-b039d68/nav-pilot-darwin-arm64"
      sha256 "bea09e5133c342d3b5c13d52e269871109c868f969cebfb0b0526c4e93cfb9e7"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.12-132622-b039d68/nav-pilot-darwin-amd64"
      sha256 "eaa7f1ab40234c269283c1949496d27797a9c9fcee62502f60e16cf755745c3e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.12-132622-b039d68/nav-pilot-linux-arm64"
      sha256 "91109b8b767d18125aabdc95ff4e29b255687f33564e1b9d95678f62fe0ca409"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.12-132622-b039d68/nav-pilot-linux-amd64"
      sha256 "471ff2f0125a3da05704d0867017fed1090c038ebccc131c8326976e9f1bf3ce"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
