class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.07.01-205322-ecb3952"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.07.01-205322-ecb3952/nav-pilot-darwin-arm64"
      sha256 "b91034690eaed32f30977d85d85597896f5efa485f4734cd71fb40913f12c727"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.07.01-205322-ecb3952/nav-pilot-darwin-amd64"
      sha256 "8f58a60d9d455a2447196f6ea3c39107ded7936942716969ba269d9bfb0af144"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.07.01-205322-ecb3952/nav-pilot-linux-arm64"
      sha256 "c294e17ceabb5dc93c7c3a51c9481ffd8feed9f466fa489ca3a6743d6c06071a"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.07.01-205322-ecb3952/nav-pilot-linux-amd64"
      sha256 "491e77369f29df0775980c3345e3cec962626ae11a7822920061f5ffe224be4d"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
