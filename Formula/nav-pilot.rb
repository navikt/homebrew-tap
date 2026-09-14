class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.14-131410-07ce094"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.14-131410-07ce094/nav-pilot-darwin-arm64"
      sha256 "cb3854fd70a6555701536c0f955ec136200e395ba99817e8949d1cd36637e24e"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.14-131410-07ce094/nav-pilot-darwin-amd64"
      sha256 "4558afc39742bbe8e4e88ea9ec0649f1b027d07757eb3bd7915844f1ebea8622"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.14-131410-07ce094/nav-pilot-linux-arm64"
      sha256 "50ad3af3cd34e5922e9bd9d9d07ffd1cfae870642df0386627c61ea5d29dd94f"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.14-131410-07ce094/nav-pilot-linux-amd64"
      sha256 "72480d93b4c2bab7be0daa7185abe1cd4885597d3e3afb6b83c87cafa3ae6b2b"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
