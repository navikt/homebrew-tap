class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.30-123114-9367b83"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.30-123114-9367b83/nav-pilot-darwin-arm64"
      sha256 "6c1fa91f2d053eb821c239a23b2c9cfd7c3de63fc7d4fd86a375ceb8c5cae91b"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.30-123114-9367b83/nav-pilot-darwin-amd64"
      sha256 "35e304200224bb26228bbb1198e6c9fd8b3679e0a5e2c97e2c00a998f010bff9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.30-123114-9367b83/nav-pilot-linux-arm64"
      sha256 "2172e6c2c315704caa9a5faf53d45dff134ad72f9cac72cae61d2778e3b1e4a6"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.30-123114-9367b83/nav-pilot-linux-amd64"
      sha256 "1cd2c6b41dfda6c6539f046e8d9492f442bb4a7c1f6ae922f9f3845ca1a8f8cd"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
