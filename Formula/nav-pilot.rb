class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.28-081152-6efd04e"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.28-081152-6efd04e/nav-pilot-darwin-arm64"
      sha256 "9c491b65b136ab98e6826eb2275777b68b80da98dfbb71d7fd1b47dc2a13d6c3"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.28-081152-6efd04e/nav-pilot-darwin-amd64"
      sha256 "55785998510dc456d516cf078f4687d6c8addaf5b4e3d74292d0c1c0c2a221c2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.28-081152-6efd04e/nav-pilot-linux-arm64"
      sha256 "7d7c1fe8345489c04a84006363097126e90a7d070bc8334d79a800232d254b28"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.28-081152-6efd04e/nav-pilot-linux-amd64"
      sha256 "6af9a1b120647f1ba6ebd8ce31a94bdff83984b581f53ae98845742b5182eca3"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
