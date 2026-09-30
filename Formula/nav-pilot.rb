class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.30-201733-6caf42b"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.30-201733-6caf42b/nav-pilot-darwin-arm64"
      sha256 "2218e7a4a6f584635ae8018aa4eef94c022cc219b0d89bc1cd8b940367086120"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.30-201733-6caf42b/nav-pilot-darwin-amd64"
      sha256 "82d9cdb9c3d32279ce7ceec30b4f2da4b1ffd1cf8fb25e990d58c1f388aecf83"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.30-201733-6caf42b/nav-pilot-linux-arm64"
      sha256 "7e1d20e1c02e30533d11f66b0343c3b7a0d3fd939fac580eb93c450d8d88a189"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.30-201733-6caf42b/nav-pilot-linux-amd64"
      sha256 "13edb5bf8ffd595f748b307354467ec8f678649c399835b10a48c393c1a68a3f"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
