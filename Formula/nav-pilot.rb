class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.06.10-110214-d01e504"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.06.10-110214-d01e504/nav-pilot-darwin-arm64"
      sha256 "a9aa41f32e4de764da71979805de901e27fe092fb13408894a7d3361658e1756"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.06.10-110214-d01e504/nav-pilot-darwin-amd64"
      sha256 "27cd015a957ed93d2807d6a80650fc365ebdc702394c877435a66267dac25a79"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.06.10-110214-d01e504/nav-pilot-linux-arm64"
      sha256 "d21f56f2f846662e7cc352ae04590f0384695933b2556f203ef2b7239044ca69"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.06.10-110214-d01e504/nav-pilot-linux-amd64"
      sha256 "6258bb135393429f5d43357067bbfd52c300e1a3852bbf2b20787250919f9e9c"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
