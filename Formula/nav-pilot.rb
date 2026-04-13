class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.04.13-191445-bf15b3d"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.04.13-191445-bf15b3d/nav-pilot-darwin-arm64"
      sha256 "1add11fdae2a9abde90c273b3d1aa3d70707626685bc0c596c0dcf251d9a5ee5"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.04.13-191445-bf15b3d/nav-pilot-darwin-amd64"
      sha256 "642dadd57ad07ce2519b13b4f75156baf1bd9248e74df150f26b554d00da966d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.04.13-191445-bf15b3d/nav-pilot-linux-arm64"
      sha256 "3f3f4ff79821854d749997098d8777b6047c5a279faf9a188c765a4f66602b45"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.04.13-191445-bf15b3d/nav-pilot-linux-amd64"
      sha256 "81eac5c45e43468b5835c41aaa346e70b2ebd1b38275fd8cc2d81f17a15b9cc9"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
