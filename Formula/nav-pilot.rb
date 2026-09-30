class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.30-072123-4a3593b"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.30-072123-4a3593b/nav-pilot-darwin-arm64"
      sha256 "74a21ffd397ad5bc78f966b0d1fceb72afc0a17b01deb110aff979ae2e49520d"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.30-072123-4a3593b/nav-pilot-darwin-amd64"
      sha256 "5ab7402d5b1cf7fb17a6222e6a1dfcfc9f18f1eaa65bbbd13b247d2fdefaefd0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.30-072123-4a3593b/nav-pilot-linux-arm64"
      sha256 "dcf7bbee6b38d3ffd1ec6a60467c64a05a7a31233626b81b2863eb90bbf9497e"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.30-072123-4a3593b/nav-pilot-linux-amd64"
      sha256 "540b2aa6d0c28e6ca999b7a3fd542b17d9d71ec87661c04c8e3345481bf0c7d4"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
