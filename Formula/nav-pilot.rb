class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.10.07-093545-1a4472a"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.07-093545-1a4472a/nav-pilot-darwin-arm64"
      sha256 "608b4459c080b9f46ffbdf2f142ec5f93f64d2ad61b0e03d3c33d653df4b04c8"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.07-093545-1a4472a/nav-pilot-darwin-amd64"
      sha256 "8bc163182de87369e5f94cb6861a1bf9d99273f71859228da237b3e808383a17"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.07-093545-1a4472a/nav-pilot-linux-arm64"
      sha256 "5873fa5fa469ae3c766b66c9eaaf73d8dad98478fc082cc8ce4d78012b28eb0d"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.07-093545-1a4472a/nav-pilot-linux-amd64"
      sha256 "33376092f91089f9ceee6e8eb57a4eac96e360f390635d2fda2b77496f22ea03"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
