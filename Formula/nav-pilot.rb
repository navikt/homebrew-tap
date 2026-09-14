class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.14-175008-086fab0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.14-175008-086fab0/nav-pilot-darwin-arm64"
      sha256 "2690b5e508854ebf8559350239ed793f35220d17355981918d398ab1c6aa8166"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.14-175008-086fab0/nav-pilot-darwin-amd64"
      sha256 "fa555cd22a4fcbedd14c7f022e8183d1df0392b4fdf4ab88550775ff9dbaf27b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.14-175008-086fab0/nav-pilot-linux-arm64"
      sha256 "fc3a54b0a0adbe653a0fcbdc50f846e01fdc3ec5f1a00cd2da57123c3489f1c7"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.14-175008-086fab0/nav-pilot-linux-amd64"
      sha256 "ead0b32177fd0e26856a8bf610cf2578e375cac29c45a3e94f7568ece2dc2d9f"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
