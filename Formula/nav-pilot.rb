class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.05-041217-e212593"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.05-041217-e212593/nav-pilot-darwin-arm64"
      sha256 "bb04c8c5e6dd4b5c679bf6a6a7f76b257823d25b2a9066809fd24b11a9facf60"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.05-041217-e212593/nav-pilot-darwin-amd64"
      sha256 "70e4bb483b8e648febc44df2960b047500bf6586bdee464e4aa038ad6266236a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.05-041217-e212593/nav-pilot-linux-arm64"
      sha256 "5efe2ddf6db4247c090f362ad3a614a04bd232aebdc1afd051c6ddd963145a77"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.05-041217-e212593/nav-pilot-linux-amd64"
      sha256 "2b4df5737d14c8528f495544aa0219dd9dd81123cd033ed88612935ed1790bac"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
