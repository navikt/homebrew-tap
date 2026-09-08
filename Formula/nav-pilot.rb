class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.08-074731-f191217"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.08-074731-f191217/nav-pilot-darwin-arm64"
      sha256 "41eda0ab5082c4c50c912f57ccdd32e7edcd446f90be0ec044adffd087905d63"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.08-074731-f191217/nav-pilot-darwin-amd64"
      sha256 "9542aa4dca38864bd43abf45f00efe2a9645b1e4aeec89791bf088b62b8eaaf8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.08-074731-f191217/nav-pilot-linux-arm64"
      sha256 "9460853e1e34be4db97ef976ec4fde195045a81356c0a0056755fa5b605a8b48"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.08-074731-f191217/nav-pilot-linux-amd64"
      sha256 "894233ac7791b3b5fcefa0a98afe9cb8ea6f29cdc3649784ac148957604f1432"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
