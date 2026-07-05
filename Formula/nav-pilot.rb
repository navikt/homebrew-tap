class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.07.05-165716-b264d34"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.07.05-165716-b264d34/nav-pilot-darwin-arm64"
      sha256 "50489415f5121dbbeb39ac5c3f6300ddb7fd8468b2ad02a011480041bdbe5302"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.07.05-165716-b264d34/nav-pilot-darwin-amd64"
      sha256 "1556c4a9fa34cdf44be293d716d60ce3f6487dbca931b6673c4337d5befbf49d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.07.05-165716-b264d34/nav-pilot-linux-arm64"
      sha256 "16e771b747050ba0ffc8bb16913345db0bc0b9d5e0cb6187c29cd060ba08b9cd"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.07.05-165716-b264d34/nav-pilot-linux-amd64"
      sha256 "af4d459245efa086a2cd85a220c3664cf07d146a9d06b2862b07dbb50259175d"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
