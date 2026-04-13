class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.04.13.17.42.29-45f9d83"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.04.13.17.42.29-45f9d83/nav-pilot-darwin-arm64"
      sha256 "fa983834aca415da791ffbb54065c255a029f6200ecee27112b6cbc06e9105a0"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.04.13.17.42.29-45f9d83/nav-pilot-darwin-amd64"
      sha256 "e0561791352ad45d32009c8a5046ddd794fcf2810a2283b0f588a20c3e3a5ce6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.04.13.17.42.29-45f9d83/nav-pilot-linux-arm64"
      sha256 "65b428878bed6c312735c3e188a3db1a2512854af43200396d34d8a1cf8804c1"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.04.13.17.42.29-45f9d83/nav-pilot-linux-amd64"
      sha256 "23ff95a988f209e0417a446c97c0c0ddb3baedfeceab9eb9c672605d5825b5e2"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
