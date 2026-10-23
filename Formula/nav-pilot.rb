class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.10.23-130915-b70380b"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.23-130915-b70380b/nav-pilot-darwin-arm64"
      sha256 "9111ee3524d44f9eaaaf602e66cda12bead3435104c2f24da0c2acb080867a56"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.23-130915-b70380b/nav-pilot-darwin-amd64"
      sha256 "f4c7e812949966b0e776269e2bb7104a545f57a8a81620db4ec95cc8afb95afc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.23-130915-b70380b/nav-pilot-linux-arm64"
      sha256 "73b7ccfd55731c9bed99b28e3070b3c00984dec01d9883e6bdf0fde5958c868f"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.23-130915-b70380b/nav-pilot-linux-amd64"
      sha256 "699db400fccea6efbfc7e83ccebfc3d20b0c85109ab91946643120886140c296"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
