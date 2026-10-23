class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.10.23-165513-c582a24"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.23-165513-c582a24/nav-pilot-darwin-arm64"
      sha256 "c6a944c314bfd8f323ec9d9f36929c23f694fb621485187fe03b1ae2c2189099"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.23-165513-c582a24/nav-pilot-darwin-amd64"
      sha256 "d41c56dcd0d39f7c5bf651433a9fa3eb0c13a70ce55cd414c1df3b34839d742a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.23-165513-c582a24/nav-pilot-linux-arm64"
      sha256 "bb9ad17cac327648af47d40c30cf37b77609d466eb30e2b7827f0c75cb4de6b4"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.23-165513-c582a24/nav-pilot-linux-amd64"
      sha256 "47b73603a1d5f2077003477d5e1ff75885e351e59855999342735c48e02c1e3f"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
