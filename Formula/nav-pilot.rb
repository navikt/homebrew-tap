class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.06.24-071557-1b59278"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.06.24-071557-1b59278/nav-pilot-darwin-arm64"
      sha256 "b2e61f683f3adadc42818220aabfbe552caf15314db00f15bd4a26ec0002480e"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.06.24-071557-1b59278/nav-pilot-darwin-amd64"
      sha256 "e789506a8e16aa9d83be8dbdc6e9b1df2d85df0147e17e5bdb8e19842fe572ae"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.06.24-071557-1b59278/nav-pilot-linux-arm64"
      sha256 "779d4d2c4d92eba861759e3d9210a808a4f4bcc9a3df0ee4902ddc18368ed0a2"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.06.24-071557-1b59278/nav-pilot-linux-amd64"
      sha256 "6a0801f012951d77974a33b64e04ab94af323c4318d5c0b2fa191052c0898117"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
