class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.01-221838-99da1c0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.01-221838-99da1c0/nav-pilot-darwin-arm64"
      sha256 "312be858e453692e0b470a9d593ca4dfd372205a3955dd2f9765e16e895677fd"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.01-221838-99da1c0/nav-pilot-darwin-amd64"
      sha256 "d3f4ee9b0d48f925ed4563276f70f661a7ad651b6a73259d235cbae9d9adbc34"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.01-221838-99da1c0/nav-pilot-linux-arm64"
      sha256 "1949105e4d6d78bf916b699f4cbaa960e9ad388fa6a852866a07483c12003615"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.01-221838-99da1c0/nav-pilot-linux-amd64"
      sha256 "e26a4ead8f42c4df510c167a221871ba0a181ba952189488213111551f709140"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
