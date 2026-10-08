class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.10.08-132831-32995c7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.08-132831-32995c7/nav-pilot-darwin-arm64"
      sha256 "f13e76d160c1d578b691ead0cec61018854b225c7ff01bb02e9b76df7fe92bcc"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.08-132831-32995c7/nav-pilot-darwin-amd64"
      sha256 "2977720457830f63ef0697ee9813c48388e2eb46db80788b130311f7c22c6235"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.08-132831-32995c7/nav-pilot-linux-arm64"
      sha256 "f845cf59a6fca4babb1b661c49e6ab062f5417c840085b910bafc0885bac9b6c"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.08-132831-32995c7/nav-pilot-linux-amd64"
      sha256 "f6247f7b8fcd08055c8593b7a5784af615eb8c2efbb44cc7d3462c510b976d95"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
