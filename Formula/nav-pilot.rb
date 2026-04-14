class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.04.14-120650-71dcb83"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.04.14-120650-71dcb83/nav-pilot-darwin-arm64"
      sha256 "f89207cd248d44735db34e1f2d4a40d78d9c98957b0a4be4beb40575f0e16f98"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.04.14-120650-71dcb83/nav-pilot-darwin-amd64"
      sha256 "c93cb92494baf916b0187800d1b75919bff815ac118b95588436ddebc5dc8e75"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.04.14-120650-71dcb83/nav-pilot-linux-arm64"
      sha256 "043769835ce37c9ca98f6b490b6b0797367625ebc72800ffe137a21eabb1f749"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.04.14-120650-71dcb83/nav-pilot-linux-amd64"
      sha256 "858459143b3785971abeb9d07076874c8480f68f7ee241345fa6ac331260e351"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
