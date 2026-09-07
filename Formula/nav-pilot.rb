class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.07-130637-1a8a06b"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.07-130637-1a8a06b/nav-pilot-darwin-arm64"
      sha256 "c840056804f39c01bd1bb5c674a20847678f468dc428bfc728cb25a829b93224"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.07-130637-1a8a06b/nav-pilot-darwin-amd64"
      sha256 "cf920c049f51d53fb7fc5744bb666a61b295f1e47d212d512b426aae306c8132"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.07-130637-1a8a06b/nav-pilot-linux-arm64"
      sha256 "d2bfdfc63429696a4646a0f5d967eb7012502512278105231ada3990a8f06cb1"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.07-130637-1a8a06b/nav-pilot-linux-amd64"
      sha256 "83dfb8557cb66543dd6b001bc19e555a992bb6f31270ceceb6eb8171a6b9f08b"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
