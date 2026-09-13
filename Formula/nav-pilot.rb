class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.13-130448-45e56c1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.13-130448-45e56c1/nav-pilot-darwin-arm64"
      sha256 "9a1c1b74d05e07798a428711100a3c5a838fd70a4fb21490f6e269ecd568f20f"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.13-130448-45e56c1/nav-pilot-darwin-amd64"
      sha256 "34b95b7284ab82314a4123f4cd77f71b76258e0df41a9d6e0071dbd4002a90e7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.13-130448-45e56c1/nav-pilot-linux-arm64"
      sha256 "90954014260128d0d4e959f64609489d07d05891d300a49aaf40207b4dfd90aa"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.13-130448-45e56c1/nav-pilot-linux-amd64"
      sha256 "7ed5a11b311b72a19fa49fd3fa082184c304fcc49a09d8c0bd807405de9f7b8d"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
