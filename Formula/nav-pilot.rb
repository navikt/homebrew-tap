class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.08.31-204937-be6b4b3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.08.31-204937-be6b4b3/nav-pilot-darwin-arm64"
      sha256 "4126bfe1dc5089fe2d12669c310ce93868507cf21289c6930d4697ae968921b0"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.08.31-204937-be6b4b3/nav-pilot-darwin-amd64"
      sha256 "d8749c5e866d4113e218f813a7b84e6014e7c42cf5e609e12c5c2202dbc57432"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.08.31-204937-be6b4b3/nav-pilot-linux-arm64"
      sha256 "02ff4b2281fbefc242c0650c5669e7ae70e2e3654ce3accd9f6bf7cdca9b79e1"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.08.31-204937-be6b4b3/nav-pilot-linux-amd64"
      sha256 "3936d8eb346ccc1a2fb9dda17d7baecaceef516b917dd94500c82f375f65c84c"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
