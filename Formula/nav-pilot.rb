class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.25-050207-9e8b8a3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.25-050207-9e8b8a3/nav-pilot-darwin-arm64"
      sha256 "8e7f265cf749030ec213bc9139a1433cb1714754c312f983bc8d22773304fb4d"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.25-050207-9e8b8a3/nav-pilot-darwin-amd64"
      sha256 "9085bea8efa93d17545e87541de8c686f2661fd3de3dcaf665e1135d93805925"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.25-050207-9e8b8a3/nav-pilot-linux-arm64"
      sha256 "08b37b050d151e1ea09fcb4de99858e6a875f138458ccc7f48fe47ee4699a6af"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.25-050207-9e8b8a3/nav-pilot-linux-amd64"
      sha256 "fb243b43ed8b72c2db479d97d86b0e39d520bf1a24d14c909b46f5c3fcfa5f9d"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
