class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.10.05-143335-970f811"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.05-143335-970f811/nav-pilot-darwin-arm64"
      sha256 "071de9c6c3d65e398afd3c187a4b84b4c477148d4b5b4eb009e7de9bd4fb3575"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.05-143335-970f811/nav-pilot-darwin-amd64"
      sha256 "1ecac81b24d5d77d9bb612332659151dd714818b2cd4774a641853e25651386f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.05-143335-970f811/nav-pilot-linux-arm64"
      sha256 "8d3b19bc11b096114004e830752c23365ad0b2d32e97e5dab5e3e69b3cc659e4"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.05-143335-970f811/nav-pilot-linux-amd64"
      sha256 "d934ce494fc63e6ee544a3fbd8baff22a42c33224dde5f4f6fa04c6534dc6572"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
