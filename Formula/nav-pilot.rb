class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.03-210945-e0483ed"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.03-210945-e0483ed/nav-pilot-darwin-arm64"
      sha256 "f863b5ce576052afe48f280ea10936b2dc241bdc23d68c1f4a26a26c720c9491"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.03-210945-e0483ed/nav-pilot-darwin-amd64"
      sha256 "6ef12fcee45f156af6c79e887b91e61edb65418948dcaae4e614f2116dd95e1f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.03-210945-e0483ed/nav-pilot-linux-arm64"
      sha256 "f263ac8adb7ee063b453b48d2845f862154bf4ed9c8c74f39a849658a8583dac"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.03-210945-e0483ed/nav-pilot-linux-amd64"
      sha256 "535ea67826ed3ac5cea2f72d6cae55f920d06783973d33dfa7640f296d461532"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
