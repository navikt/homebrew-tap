class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.01-230025-a45220c"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.01-230025-a45220c/nav-pilot-darwin-arm64"
      sha256 "372257a04bc69d51e302d0598fe81caa7a2c46347d7ec284d26e7f1fc75b00b8"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.01-230025-a45220c/nav-pilot-darwin-amd64"
      sha256 "d295a7a0b07f15a45c059ffc87d2b1dae80af6b746b3e93963ba58c9522095a3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.01-230025-a45220c/nav-pilot-linux-arm64"
      sha256 "d236b6baca9be82f2b6ae2ea0cc499f036cdb8c7979b5158a4df5d874d2cd776"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.01-230025-a45220c/nav-pilot-linux-amd64"
      sha256 "990fd4ebb787df1a291711482496a9da18673e2afbb4783fcd1972ad279fcfef"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
