class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.10.07-112424-2c71da0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.07-112424-2c71da0/nav-pilot-darwin-arm64"
      sha256 "c1ce2d132643b784f4eb0b243ceb8e4ed37935cf6ba82997ab9cdbef4ea5d6d5"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.07-112424-2c71da0/nav-pilot-darwin-amd64"
      sha256 "75897eabc46553a293b67d76de45e7a6ac99854b8b08c637966864dcb33fb056"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.07-112424-2c71da0/nav-pilot-linux-arm64"
      sha256 "da32a05d42b8666912857f0a7ab5ecaddc94d92120c67b9d0a413bef1dfcd754"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.07-112424-2c71da0/nav-pilot-linux-amd64"
      sha256 "9705832591d838e5ba0f335aa8dd8f5630b8f7e720fa1adaf5a9382234c31e61"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
