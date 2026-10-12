class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.10.12-103621-8f33230"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.12-103621-8f33230/nav-pilot-darwin-arm64"
      sha256 "031b4658417caee154c40a408eb6c32c8b8a46710c317826c68fe74818ec388c"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.12-103621-8f33230/nav-pilot-darwin-amd64"
      sha256 "27c4b0e7529e9112e0fc573ce59a6410536da58d05f2a5b90cd69a7742f16340"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.12-103621-8f33230/nav-pilot-linux-arm64"
      sha256 "12d6bfd26145552dbcafe7b0ca8b66903bb400613d024c8f835d51f944d42ad4"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.12-103621-8f33230/nav-pilot-linux-amd64"
      sha256 "9bbdf63bc3dc4730de98b79a39aa0875cd4f6304857e0d9acb94ebcf8a4585c9"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
