class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.11.25-220729-e34964a"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.25-220729-e34964a/nav-pilot-darwin-arm64"
      sha256 "02c5c426462d923e4b3ebc7ee0669883036fef4b04df07350049ae81bf5a691e"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.25-220729-e34964a/nav-pilot-darwin-amd64"
      sha256 "fbf33b95311b37d139d3607e256e3ce687b18c935a6844759badbd0c50057274"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.25-220729-e34964a/nav-pilot-linux-arm64"
      sha256 "3c3cbc0c62143ae4d0d005327df7c62ac23711e85ff7c6ab8389c596c5f92777"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.25-220729-e34964a/nav-pilot-linux-amd64"
      sha256 "20438d06f3fd024eaf7ad7f7361853c5e1369ab8b52641f9e5686601ce09b78b"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
