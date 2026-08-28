class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.08.28-095355-026f5a3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.08.28-095355-026f5a3/nav-pilot-darwin-arm64"
      sha256 "7d096e7dfb1da3fbfeb2850ae7985c64d096443cc71f03fe5b3c00a7f8221b6f"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.08.28-095355-026f5a3/nav-pilot-darwin-amd64"
      sha256 "d6d2eedb7791e0b37473f901fe66ede32701e596ee277acef02bb31831014b08"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.08.28-095355-026f5a3/nav-pilot-linux-arm64"
      sha256 "6db50ecb2736ba5c852be0bfb925987bd5b0ac88b84121014fc1ecba472c0fc9"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.08.28-095355-026f5a3/nav-pilot-linux-amd64"
      sha256 "41b1387f187b4c63440015382e5eeb9f60ad7f27db095bf128629a823962c903"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
