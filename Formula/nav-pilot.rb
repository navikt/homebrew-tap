class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.05.15-091905-c272025"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.05.15-091905-c272025/nav-pilot-darwin-arm64"
      sha256 "a18eeabe95873b9a682368df8fb73e5d860dcad1d68486d94a407a510793162e"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.05.15-091905-c272025/nav-pilot-darwin-amd64"
      sha256 "bb0ad9ce9ec286ba16f9f5149a33dd6fbe83c12c6e4b87e296bf8fc26634e893"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.05.15-091905-c272025/nav-pilot-linux-arm64"
      sha256 "ade6e0fa8701866701a84bad1a75ceaebb09eb3e80c23afc46cf0f04b2e61a5c"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.05.15-091905-c272025/nav-pilot-linux-amd64"
      sha256 "bd4f9688117695dfafdc7e74a813ebbb1a389187ce7efcbcac26b24706ba7b67"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
