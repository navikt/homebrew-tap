class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.11.23-231218-0ffd7a8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.23-231218-0ffd7a8/nav-pilot-darwin-arm64"
      sha256 "e78334ecb82d52ec7568bc86fbd90134f0efa52dc93444178ce7f8f1a785205a"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.23-231218-0ffd7a8/nav-pilot-darwin-amd64"
      sha256 "4ee83c2a79f98c4c7cdf81d5c3789e52c65e369ada944be26f02b8f3784be643"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.23-231218-0ffd7a8/nav-pilot-linux-arm64"
      sha256 "745f1d3bedd96261e50cb59f6133b377a27f99532d08da78314bd64e9e35c9e8"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.23-231218-0ffd7a8/nav-pilot-linux-amd64"
      sha256 "ee728135fa24ecebf5249cb08525deb0f94073599f530f032ed8e581eabce23e"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
