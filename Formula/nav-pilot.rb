class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.05.19-124507-b57b838"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.05.19-124507-b57b838/nav-pilot-darwin-arm64"
      sha256 "cb33f4faaf904edba5506855f91edc7aaa5d2c9b21919ef5e3a1772ef7a71d2f"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.05.19-124507-b57b838/nav-pilot-darwin-amd64"
      sha256 "5371c4ff509d924da4afc6ee7ebcb55d787a660abd9deb09e702fe3a9f915748"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.05.19-124507-b57b838/nav-pilot-linux-arm64"
      sha256 "73d9d27251ae9d56f81ee5505442adc93ec291015e662759c5a0b8a3e69cd2bb"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.05.19-124507-b57b838/nav-pilot-linux-amd64"
      sha256 "fd8b7148788177c425116ce3fd26e07a2235e891e7cd049b3c77fa7a2a233ead"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
