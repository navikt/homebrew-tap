class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.13-152047-ecea6d2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.13-152047-ecea6d2/nav-pilot-darwin-arm64"
      sha256 "73ff289e04ba329c546105028d8eb529372ddd2322ea4521e4f0de40fae919ce"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.13-152047-ecea6d2/nav-pilot-darwin-amd64"
      sha256 "8e0cefcf89f6613500eb6abeccd5abd20fe174d7d5179ea7158396f1fa144bb7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.13-152047-ecea6d2/nav-pilot-linux-arm64"
      sha256 "f5b2eb941059c34f54b0a35f20128974ba5b2c933857c1cf30036bc7b5e9ae6a"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.13-152047-ecea6d2/nav-pilot-linux-amd64"
      sha256 "4a5731a160b29424c98226b56c6b5ff6cb7f94c06683d8f8822317f7c84fad94"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
