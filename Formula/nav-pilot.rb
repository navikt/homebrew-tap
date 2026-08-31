class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.08.31-075046-199e55c"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.08.31-075046-199e55c/nav-pilot-darwin-arm64"
      sha256 "93517ee53ec0426806c7c1050b43a9e2f3b0de188b2f33b810e658e46be21548"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.08.31-075046-199e55c/nav-pilot-darwin-amd64"
      sha256 "5c4a427dac6d1eec52ed9e74a93174e1287d2cfb3738fd31cf2b61b7c5eebf84"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.08.31-075046-199e55c/nav-pilot-linux-arm64"
      sha256 "33fa435253176e49ce6922bf014d0a1108fe5bdcecef73a179e9fbb40adc0692"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.08.31-075046-199e55c/nav-pilot-linux-amd64"
      sha256 "0ff2a66553062cf752f573e7dd40c38accbbd03267dd396ed972e379f49daadb"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
