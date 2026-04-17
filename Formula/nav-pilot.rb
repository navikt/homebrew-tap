class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.04.17-064315-e010946"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.04.17-064315-e010946/nav-pilot-darwin-arm64"
      sha256 "a498cd96b984584ee91d8174cb0fe0ce1f8052d7bfad95068c5c7af42ab7c414"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.04.17-064315-e010946/nav-pilot-darwin-amd64"
      sha256 "616aa03841326aa6be5d4efa38e6cf479cd6664585ca068fed8c9855bca77665"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.04.17-064315-e010946/nav-pilot-linux-arm64"
      sha256 "d281c1fe3e3fbf364d41d7c08eb794145cfed9bee08fb516f32a070060d2db9d"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.04.17-064315-e010946/nav-pilot-linux-amd64"
      sha256 "d81337fde0c2b02eb38b771349b59d0a7b8ac8b92184221327759edacf596d12"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
