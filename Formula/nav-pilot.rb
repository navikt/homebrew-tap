class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.11.16-192843-8249c4e"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.16-192843-8249c4e/nav-pilot-darwin-arm64"
      sha256 "334a225260ef0a2be0fdb428f750c851085bcb265d8283d254a142418e709e4c"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.16-192843-8249c4e/nav-pilot-darwin-amd64"
      sha256 "2a4b9a09c8c8a8afafdf30f4e24365daa514792f2103aaf62a39dc453e3cfff0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.16-192843-8249c4e/nav-pilot-linux-arm64"
      sha256 "a7b3c7a95f9459a393fc370b46507dff5bcd9a280c58023b6733bca31a75e714"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.16-192843-8249c4e/nav-pilot-linux-amd64"
      sha256 "eb8b79b40efdc143c32adbcfd1712c4b150886d302662b73643b7c74f2b22f5f"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
