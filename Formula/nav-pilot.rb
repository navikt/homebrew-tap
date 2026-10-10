class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.10.10-100308-b326a78"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.10-100308-b326a78/nav-pilot-darwin-arm64"
      sha256 "96c691ba9f416c072d4279535bb67dc1674d2414f077694d08b17f887961fbc6"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.10-100308-b326a78/nav-pilot-darwin-amd64"
      sha256 "0b6322805df1f650f6817ddb8184b3b1ae8c5451dfd5fe973e7564abd31cd453"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.10-100308-b326a78/nav-pilot-linux-arm64"
      sha256 "0934d766f95d53cb35cd3add746341bdf0dc77794ad644e61b6278f880def0df"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.10-100308-b326a78/nav-pilot-linux-amd64"
      sha256 "11d9ace2f2f45477d203af4938e51b27adb6d2cdddfce599f41e1defe8d3ff0f"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
