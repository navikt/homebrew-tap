class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.11.22-003914-4367eed"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.22-003914-4367eed/nav-pilot-darwin-arm64"
      sha256 "a5624186102b5c9ac54d34a2957f37d408202d7174ae5cb6fd1119dad9b852a8"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.22-003914-4367eed/nav-pilot-darwin-amd64"
      sha256 "a0579bcd2c31cb858297361b9414b104d93f7cbe4a6ffe837c4b4ae3ed4d6f02"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.22-003914-4367eed/nav-pilot-linux-arm64"
      sha256 "ce6dab9198e89e451de5f75ccaf7161f1df02d13872e5f1ee0d10e6167d447e6"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.22-003914-4367eed/nav-pilot-linux-amd64"
      sha256 "97e23753b3b362615c8ae7deee3cab121dc9b00a44639308e65775efbf8f714e"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
