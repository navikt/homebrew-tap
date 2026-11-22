class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.11.22-211851-4796eb3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.22-211851-4796eb3/nav-pilot-darwin-arm64"
      sha256 "725f1844ded8acee3188a4945a3d3dee588fa59f56d7c18515985a6919534841"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.22-211851-4796eb3/nav-pilot-darwin-amd64"
      sha256 "123ba7c1c98784610b46cd17839cb9061085d386e08eaf38d9e5979bab04b516"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.22-211851-4796eb3/nav-pilot-linux-arm64"
      sha256 "3745fe9a32093386ec35c4fd88c80ab26a5387194e2868c4f41596f20f7bc162"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.22-211851-4796eb3/nav-pilot-linux-amd64"
      sha256 "d8d7c00e6d76944690ec3c8ef6f039435946bcbe245d3e131419da22cc284518"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
