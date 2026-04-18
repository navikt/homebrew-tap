class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.04.18-165812-8b0704d"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.04.18-165812-8b0704d/nav-pilot-darwin-arm64"
      sha256 "c6c7e408ca4112a2237cafd9e300be73873a28cf8c21493777926dbb2d00b6af"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.04.18-165812-8b0704d/nav-pilot-darwin-amd64"
      sha256 "d082250c08c4867e819c97f6c365caa245b8f1b11b1cf63dafac1e632564e16d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.04.18-165812-8b0704d/nav-pilot-linux-arm64"
      sha256 "c120cf4bd0431803f584abe9112c6cc67da27d37c8e16b9d1143524f59ed8ca6"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.04.18-165812-8b0704d/nav-pilot-linux-amd64"
      sha256 "38a148d9f4272e8969f1445ac0159d6a8092a27ce64866b4b572cf23733e7b6b"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
