class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.10.13-210022-768970a"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.13-210022-768970a/nav-pilot-darwin-arm64"
      sha256 "6b3ea098e2cc9848cfa6bacafdd172317d7b0a184afb91292637d57585c77c09"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.13-210022-768970a/nav-pilot-darwin-amd64"
      sha256 "aa53337bdd17dc92ad4aa78f8eef92f3ebfe7ac1a5be0d7ae5ff6f5980174009"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.13-210022-768970a/nav-pilot-linux-arm64"
      sha256 "023deb7227001baf14a7d911bc52999e2fd4fde3ff5091253ca64a6a645ab8fb"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.13-210022-768970a/nav-pilot-linux-amd64"
      sha256 "6218c3748e6d11dfd75acce1f9c3ab810754a3386d8425a862c74b53555fe862"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
