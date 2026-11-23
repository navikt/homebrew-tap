class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.11.23-221410-24c7be2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.23-221410-24c7be2/nav-pilot-darwin-arm64"
      sha256 "8b7d2b64d1352e1fd48810a5eec2893900e5db437a9f5aaa678ceb87ef2a23ac"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.23-221410-24c7be2/nav-pilot-darwin-amd64"
      sha256 "13e50023aa6a965ce52e2a74422f51b2cb13999ca0d1090308235e390d7ae4cc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.23-221410-24c7be2/nav-pilot-linux-arm64"
      sha256 "55d5756bb7543f12bc61f9c60dde52d5086276f4432b98fc0e70e778c0a66231"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.23-221410-24c7be2/nav-pilot-linux-amd64"
      sha256 "0983151916f2817a9bd5208930f2a48f35c8b57b3586ddacbee4cc809f37d972"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
