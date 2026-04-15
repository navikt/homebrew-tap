class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.04.15-085456-a1b5704"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.04.15-085456-a1b5704/nav-pilot-darwin-arm64"
      sha256 "56c2a2e1ca01e12f00a423b6ee3fc3485c35ded9c8ef24cf2fd944e670c36c6f"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.04.15-085456-a1b5704/nav-pilot-darwin-amd64"
      sha256 "c7243985df1efc79aaf590daf6f3bca4bb7b65eecaa4ce82721ecba1f593c3b4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.04.15-085456-a1b5704/nav-pilot-linux-arm64"
      sha256 "1e87b86127aae8f45946a4a5094cf9d2a19615cd3af7a9e21e9e165c4b9b868b"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.04.15-085456-a1b5704/nav-pilot-linux-amd64"
      sha256 "9d7655200cf1dbbc4a8505974d9f3cafbfbab4f794f690ff6dbec6bb48a0c260"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
