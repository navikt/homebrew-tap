class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.10.07-064704-5f951cd"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.07-064704-5f951cd/nav-pilot-darwin-arm64"
      sha256 "149856c9267a51c24775241fadc3e3594e832a8c1f056067e6911736e1215e92"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.07-064704-5f951cd/nav-pilot-darwin-amd64"
      sha256 "c00ed96adee70eec3aac16f3fb0fbcb63b16f137a0ad904d9c20dab0ee1f4907"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.07-064704-5f951cd/nav-pilot-linux-arm64"
      sha256 "48c74261ae53cff9e527937ebbfad9c9e79127a9f194239566c590b047842491"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.07-064704-5f951cd/nav-pilot-linux-amd64"
      sha256 "a1d399e7ac3fbdd3756d2234186953598eacc340548292cc7c6480800ef5491c"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
