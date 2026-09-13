class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.13-185537-444f9a2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.13-185537-444f9a2/nav-pilot-darwin-arm64"
      sha256 "f09fa9348ac46676eb1d37dbb2acdda40a11e17c194de5a0dd536d959145773b"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.13-185537-444f9a2/nav-pilot-darwin-amd64"
      sha256 "360671d1d0c8a40f3afa72b9ab5e7c4702b5b761f560694b751197be890e3dcf"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.13-185537-444f9a2/nav-pilot-linux-arm64"
      sha256 "5daa574f2707cf89e49fb5acae03643273c10a9097773a9618e24d86183ebbda"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.13-185537-444f9a2/nav-pilot-linux-amd64"
      sha256 "ec63c74ad4e4e789b998ca1a70daae6e61fee31cc4e6e2e1f4c259c9017eff80"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
