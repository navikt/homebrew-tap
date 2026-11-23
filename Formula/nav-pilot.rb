class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.11.23-141638-3353370"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.23-141638-3353370/nav-pilot-darwin-arm64"
      sha256 "b6946cde8765eb89f7da8ffbd2c785f389f3fc4aed9e05650492cf15b4fb5f21"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.23-141638-3353370/nav-pilot-darwin-amd64"
      sha256 "a4685359131dff94904aa47768129eebc8eeb8d3bdc1cc7a1f396c34fe27c7e0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.23-141638-3353370/nav-pilot-linux-arm64"
      sha256 "ba2a5c10ad1186a20b83feaab302693705d38224f1f84959a42c7b4c4a26117c"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.23-141638-3353370/nav-pilot-linux-amd64"
      sha256 "348e7da39d2df7c6d2689ab540bc41edeef0bbe7efc6b2a0662e3d854b4d3a2d"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
