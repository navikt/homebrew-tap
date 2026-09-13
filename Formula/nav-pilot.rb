class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.13-193146-acaa287"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.13-193146-acaa287/nav-pilot-darwin-arm64"
      sha256 "70e37182f8f370022ef29d97a6bef92ac2c8a87061e939e6d23d3e225f3f7aac"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.13-193146-acaa287/nav-pilot-darwin-amd64"
      sha256 "ce5e49fed82d97046d2e0e2b14c9548600389293c927dcc9de06d5de4c95315b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.13-193146-acaa287/nav-pilot-linux-arm64"
      sha256 "6b47bc9b79ac659c801f00b01df0f55cf707a82bfd3da602ca69ce4369c8ccb3"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.13-193146-acaa287/nav-pilot-linux-amd64"
      sha256 "eac0a24252ba63bc8eb6a8027425a708b2a1d04a3879045dd1e8466110e1d55a"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
