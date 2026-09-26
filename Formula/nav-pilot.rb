class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.26-120358-2a54d56"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.26-120358-2a54d56/nav-pilot-darwin-arm64"
      sha256 "beba061da87e6b5be15a62208de429a41182bd1199ec505e131680077cacec3f"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.26-120358-2a54d56/nav-pilot-darwin-amd64"
      sha256 "5cbcb04a66564c2cb065f4226975bd476b62fa3fb7b2814d2e761486d64f1257"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.26-120358-2a54d56/nav-pilot-linux-arm64"
      sha256 "c948b797eee5a6b328fd1ef8fab0a379ddf53008b277af162421803823aef478"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.26-120358-2a54d56/nav-pilot-linux-amd64"
      sha256 "b22c745cf38e2e06f99ea8d13b2e2fc0acf592ad93ee6a30993da2c1f30ccf7a"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
