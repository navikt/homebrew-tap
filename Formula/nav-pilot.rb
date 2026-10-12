class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.10.12-125138-cebd2a7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.12-125138-cebd2a7/nav-pilot-darwin-arm64"
      sha256 "71bd69cfb48ac390695a1e2db0cbba258e27300ba76710e26248e3f612300417"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.12-125138-cebd2a7/nav-pilot-darwin-amd64"
      sha256 "e2cc4612034b328f6266201d90c68cead3d2a2cc94b735dc524f54c8120a2378"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.12-125138-cebd2a7/nav-pilot-linux-arm64"
      sha256 "bd72bf96fe77e1ff1e19b7a5a3ee55ac692029ad75b359e4c48451c1c9f39c9a"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.12-125138-cebd2a7/nav-pilot-linux-amd64"
      sha256 "025f1bfbf78c1d81d7e5d2aa752884daac9ff507b9940d94e562cb84eac357a6"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
