class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.08.31-111402-7cbe1b4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.08.31-111402-7cbe1b4/nav-pilot-darwin-arm64"
      sha256 "743fc7642b04e2a30f0d11e25162f2a5786d0687b6cb788f47fa01c590f22d95"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.08.31-111402-7cbe1b4/nav-pilot-darwin-amd64"
      sha256 "0cb7740d70f1a95200d9477d97c8eb2d3491e9fd408ba5dbfdd8e82363a7ce1c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.08.31-111402-7cbe1b4/nav-pilot-linux-arm64"
      sha256 "a7475a945f6734c5c0471229fc88596fc2a9385ea9205dc93e0105d31c0ed495"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.08.31-111402-7cbe1b4/nav-pilot-linux-amd64"
      sha256 "1761e1171ce2b51cfdac2e18e729dcb338c73877e830b1662c1624b7946f1105"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
