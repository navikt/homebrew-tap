class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.05-083028-aff5caa"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.05-083028-aff5caa/nav-pilot-darwin-arm64"
      sha256 "ae932a6e8288e37117b11e3f62a464dad1dac1be1902c213ad6f67e04f69dc59"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.05-083028-aff5caa/nav-pilot-darwin-amd64"
      sha256 "7cda9c4dde12e4d47128b80eaadafe4672bae317e4d71cc50de5eb1cc266eb3f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.05-083028-aff5caa/nav-pilot-linux-arm64"
      sha256 "0d2d180da36b9a87a5f801f7809f5f81ee4411976a7c33fadb6d6bb36188f29b"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.05-083028-aff5caa/nav-pilot-linux-amd64"
      sha256 "4a511d54987938ffb4b62b1242477a2b870fa167d46fd2bec792b6ae131336f9"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
