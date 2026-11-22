class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.11.22-075638-edefb8a"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.22-075638-edefb8a/nav-pilot-darwin-arm64"
      sha256 "ccf781d0e07adcb7059a30843083937770844b936a52799271272c955a285199"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.22-075638-edefb8a/nav-pilot-darwin-amd64"
      sha256 "703fc826178e04d85dd18ae305340fbdb55afd3d6816ae93cba9e8b607d6cf8e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.22-075638-edefb8a/nav-pilot-linux-arm64"
      sha256 "12aa9cba8b07241691370a700b1f944067839a126c7bd21d9072463dc8106e9c"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.22-075638-edefb8a/nav-pilot-linux-amd64"
      sha256 "13672f15a7c0077ecc3b5a389d5d6ed4ca99d87442a955d1cfc0bee0d58bda20"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
