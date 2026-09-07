class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.07-201251-cc8e660"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.07-201251-cc8e660/nav-pilot-darwin-arm64"
      sha256 "73780123c03c282aaf5e882b679cd6663ba6469e80a657884a8f88b231b9c95f"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.07-201251-cc8e660/nav-pilot-darwin-amd64"
      sha256 "c25c2aeb99d05a1409ba2c7b9f3650eb63bac0fe783c28b00a1698eaa02ae34c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.07-201251-cc8e660/nav-pilot-linux-arm64"
      sha256 "590ef9c223f74916b56ae05f77ddc67d0a6edca8ce79feba8baa2219edba38a6"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.07-201251-cc8e660/nav-pilot-linux-amd64"
      sha256 "c5abd06b4aace70c3015a93e53c01a217b232f2f59607bdd58d73d624ae16e06"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
