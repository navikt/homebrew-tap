class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.29-173208-f24d3cc"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.29-173208-f24d3cc/nav-pilot-darwin-arm64"
      sha256 "5d477c73b18f68562e13b8eaacd235d7bf465f8e1b39d28e2daf1ca106e9bef3"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.29-173208-f24d3cc/nav-pilot-darwin-amd64"
      sha256 "105b0844d9457f16bae355d47ce8691e327bed40a4e1a3aeb1318b4413be49ae"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.29-173208-f24d3cc/nav-pilot-linux-arm64"
      sha256 "45ee2ed369971377d041a84e8437037a1d579f2da6016ae9fac691b39eabb675"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.29-173208-f24d3cc/nav-pilot-linux-amd64"
      sha256 "dd04a7a5be21b1a112e8d78c28c2d8992637c1a4ddacc65fe054bc67da2c5ff0"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
