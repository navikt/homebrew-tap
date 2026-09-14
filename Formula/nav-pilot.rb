class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.14-120116-c72785c"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.14-120116-c72785c/nav-pilot-darwin-arm64"
      sha256 "2b325c3b56ec8a8db11bb30f05ef51bd9e6d491cb1348dab1864dababf15a6c3"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.14-120116-c72785c/nav-pilot-darwin-amd64"
      sha256 "531192eabcf09b4cd92d6082789ca9a545841b771e815e94dc095423a2884824"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.14-120116-c72785c/nav-pilot-linux-arm64"
      sha256 "c36246f4163a17d9d64f23463abc111d9d5ab32cc0ebf00818ac6a699e5089e4"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.14-120116-c72785c/nav-pilot-linux-amd64"
      sha256 "19350e6d37dd8cc42a7f15c270d23d265714d0abd2772784ca36c64bc9def996"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
