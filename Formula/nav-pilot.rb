class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.10.08-185134-97d6749"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.08-185134-97d6749/nav-pilot-darwin-arm64"
      sha256 "f3bee5c52867b0e1ce0d65c6654114937b79f13cf1aad1eaf650ef9d9ef71638"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.08-185134-97d6749/nav-pilot-darwin-amd64"
      sha256 "6d02a82791bc62ceb17d9e7d9416d60468eba7182d640d3de8e455fd976691e0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.08-185134-97d6749/nav-pilot-linux-arm64"
      sha256 "1d4a1df04d81b06c5a9f7e09a847b2c8fa4a898b29605e12ac7c8b22c57eae9f"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.08-185134-97d6749/nav-pilot-linux-amd64"
      sha256 "f5068e0abca54e05dcd53ca146bb83a733edb2938f6877a7000d996d76cfbf9a"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
