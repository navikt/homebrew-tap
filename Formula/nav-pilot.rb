class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.10.22-212616-0d340ea"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.22-212616-0d340ea/nav-pilot-darwin-arm64"
      sha256 "ffc6c7f16d9bf5397e176b8dfe66f883122f858b56cafd4f981e062f09cd7407"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.22-212616-0d340ea/nav-pilot-darwin-amd64"
      sha256 "076cd43a3fc2a3c9d8dae705179da2da5038d9d9d56ed11256d0e02013227d14"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.22-212616-0d340ea/nav-pilot-linux-arm64"
      sha256 "b9435acff5d902e03245c61475684bbe56b9373364ac8cad889a10d70db9f1bf"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.22-212616-0d340ea/nav-pilot-linux-amd64"
      sha256 "85975cad3577b9356896d68cc2976e9f968fcbb3bd85de025d2d23c69025c956"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
