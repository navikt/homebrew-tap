class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.06.23-095021-9ea073a"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.06.23-095021-9ea073a/nav-pilot-darwin-arm64"
      sha256 "55ad2db56110112c0c74a417454c650ff6f576bf09bfd5665f5286bf913f0efd"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.06.23-095021-9ea073a/nav-pilot-darwin-amd64"
      sha256 "126faa9fcac708516aaaf22bca46c85ba6d627671ce6e0d12a5a6b60dc43f163"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.06.23-095021-9ea073a/nav-pilot-linux-arm64"
      sha256 "70000d27096a83ddc63b32fc64cd84b6e23c11c30a7a80de59d718e213dafb2d"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.06.23-095021-9ea073a/nav-pilot-linux-amd64"
      sha256 "4281639a314bf0bc03368ad7caafab25b47422cb1e2831d4d92b4c6e5da77ff1"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
