class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.29-202209-789f365"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.29-202209-789f365/nav-pilot-darwin-arm64"
      sha256 "c30bd5fb17cbfd22015e950a1b4ae7191e232452477c8f90ea916f32b128517c"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.29-202209-789f365/nav-pilot-darwin-amd64"
      sha256 "695dd7afabc5dd5384355603e435c12306c788e951a9530a70462b3cc205b213"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.29-202209-789f365/nav-pilot-linux-arm64"
      sha256 "1529a2d04467bdf68d70bd7bdde9a9d7217d02221be81ed0ac34f8095acb09b8"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.29-202209-789f365/nav-pilot-linux-amd64"
      sha256 "0c612fbb71da85fc5bafba355a571b42511f6fb906c085fb703cda34ecaafabb"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
