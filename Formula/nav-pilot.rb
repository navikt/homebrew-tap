class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.10.01-065507-ed83abb"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.01-065507-ed83abb/nav-pilot-darwin-arm64"
      sha256 "a852eeed25c325cf4c7cac7e7a0540915e5673e41eecb5374e4f176e9bb341f3"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.01-065507-ed83abb/nav-pilot-darwin-amd64"
      sha256 "4592dd5633a005ae995ad2c96fe720d2de952e2f0a67d14f0ca15aaea0c4cfba"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.01-065507-ed83abb/nav-pilot-linux-arm64"
      sha256 "2085425869a8fc81aad572a552e79528e23a90a2f6bd50d163e99f75bbd46b28"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.01-065507-ed83abb/nav-pilot-linux-amd64"
      sha256 "0a74927f7d5961844e8d40432c4811eba71f1035a79c2c78a39d8d370984c701"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
