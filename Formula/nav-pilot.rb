class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.06.26-055820-fa64632"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.06.26-055820-fa64632/nav-pilot-darwin-arm64"
      sha256 "5b27cc16d8cee3c18c43c68ea80871326e1ce0e1ebfc8a576139746bbd9bdc5e"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.06.26-055820-fa64632/nav-pilot-darwin-amd64"
      sha256 "2df1cd868f376598bead6001eb4171cd6b8dd09a2a74c28890f291fdaed8f7e0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.06.26-055820-fa64632/nav-pilot-linux-arm64"
      sha256 "9fc70bb6de8a72c86e4b08a05a55503d27e89a4bf0a01c935074c16ba3482d13"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.06.26-055820-fa64632/nav-pilot-linux-amd64"
      sha256 "9958f1ce4720de46d09eb0254a2816d8d25d0bed7e832c08a7c612e82e69baaf"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
