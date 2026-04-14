class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.04.14-071414-ac1bfdf"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.04.14-071414-ac1bfdf/nav-pilot-darwin-arm64"
      sha256 "7b5be5db7ce916b141ae8855c380d541cd33a2cf7fc101a30afec7b3b279cb16"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.04.14-071414-ac1bfdf/nav-pilot-darwin-amd64"
      sha256 "a4a710159e50a1c5c83ffba3e8f77d980ca516e3f51195bf4e4fae0342cb2029"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.04.14-071414-ac1bfdf/nav-pilot-linux-arm64"
      sha256 "b930304544ff8d8402abf420854e1db3ff1ecc4662c39fc41f74748f3ab70695"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.04.14-071414-ac1bfdf/nav-pilot-linux-amd64"
      sha256 "e6d985cfa364df17868a3dc5ed499a28ce57a7d4249d3e8ef88c4b8c26a37c5b"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
