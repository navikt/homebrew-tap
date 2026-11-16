class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.11.16-153753-670230b"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.16-153753-670230b/nav-pilot-darwin-arm64"
      sha256 "e4aa15e9262c28254a1bc16ceadf70068303452e38cdca87f5626ee3a94b7195"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.16-153753-670230b/nav-pilot-darwin-amd64"
      sha256 "a0689ce94299daf34fc327771211ec8299904e9b54e9cebeba9fedb57e25b52d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.16-153753-670230b/nav-pilot-linux-arm64"
      sha256 "c17874ec67ef4a05ef4324dbda68a12c590f0b85d1ffe13d12d314006fb823c4"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.16-153753-670230b/nav-pilot-linux-amd64"
      sha256 "de3508bca78f20cc14f3753e57f313d687d3476d8db6ed3c343d49ae61f146fa"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
