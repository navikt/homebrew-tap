class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.04.13-4eb4cc8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.04.13-4eb4cc8/nav-pilot-darwin-arm64"
      sha256 "e2908fe2b36af165be7639850a406501d5c96d529dc3bd06c43377995cd3ce09"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.04.13-4eb4cc8/nav-pilot-darwin-amd64"
      sha256 "d72be7ba069de99591bc3ef4745c26269338bcf89ab367520b0e30b9a27b0f7c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.04.13-4eb4cc8/nav-pilot-linux-arm64"
      sha256 "88a2cd6a42a9cf6da01668aca5b0bc8404158bf186da659d737d1b365f38051c"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.04.13-4eb4cc8/nav-pilot-linux-amd64"
      sha256 "0c8881bb0ee86c8dc3b5d49f2cb5d0789b8286e4e9ab89bec84e4066e7dfe240"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
