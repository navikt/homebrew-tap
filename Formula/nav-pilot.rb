class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.15-102232-bc49ef9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.15-102232-bc49ef9/nav-pilot-darwin-arm64"
      sha256 "611e537627d75849eb9e47f15043a62930b5f96bd2eca7e4fcde48fa48341a21"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.15-102232-bc49ef9/nav-pilot-darwin-amd64"
      sha256 "03bf8f5c4af3c9a3ceceeab1e559a1799590709a4cd47b450195ed52574d768b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.15-102232-bc49ef9/nav-pilot-linux-arm64"
      sha256 "14b21a0e23e065f7990651440e3535e29c0e05047824fbeabe728e1066dbabf8"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.15-102232-bc49ef9/nav-pilot-linux-amd64"
      sha256 "6673d723969c059f9d18e69fc945ea6ec5e7e5b32d2d62063418214f86aa9b27"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
