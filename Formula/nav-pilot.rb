class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.10.24-171026-9fc5611"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.24-171026-9fc5611/nav-pilot-darwin-arm64"
      sha256 "abd1788de397227516200c96f643a727b330d6f6c2522e7a0c2905c6e07653a1"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.24-171026-9fc5611/nav-pilot-darwin-amd64"
      sha256 "2d052b9746d2797e7841a8ae657c0f3b0ec5d95e5a8a44f91c69825dfa67e1ea"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.24-171026-9fc5611/nav-pilot-linux-arm64"
      sha256 "82b2f4743e09fedc8dd351492a7b4b25ab7c95d829886b92ab218a6f7cf68f7e"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.24-171026-9fc5611/nav-pilot-linux-amd64"
      sha256 "a40f95d577a4c776a2dec4a187a9cb93e3523271486edf2ace13469ef393c2d7"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
