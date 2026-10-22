class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.10.22-222031-aadbcd9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.22-222031-aadbcd9/nav-pilot-darwin-arm64"
      sha256 "e4aa2468d94dd740f09dde94fa1d2aba44f4fc8a1c368f01d84777dc8f632ea3"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.22-222031-aadbcd9/nav-pilot-darwin-amd64"
      sha256 "b99cb653aba545a0684827e005ef40be322aec35be67f0fe68d599b9107a0981"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.22-222031-aadbcd9/nav-pilot-linux-arm64"
      sha256 "42a45e19c5f11f67dac0539d4c29d68c71d1f0627dde1ee38283a7ff84e8a3cd"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.22-222031-aadbcd9/nav-pilot-linux-amd64"
      sha256 "f88915f43acc15da5fcd72cb6d3c4b5fc440ef1fdff443df9b894b94ce1614ef"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
