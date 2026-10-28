class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.10.28-212650-646c24f"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.28-212650-646c24f/nav-pilot-darwin-arm64"
      sha256 "1ecb72e514a12fa0493c9d1c4238c6bd3eeb3363db62868d7d3606816bc2d50c"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.28-212650-646c24f/nav-pilot-darwin-amd64"
      sha256 "36841a5e53a2c34aa8c11c0fbb919e18f624ebd8b7d3d99dacdc918de8e175b7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.28-212650-646c24f/nav-pilot-linux-arm64"
      sha256 "30f5727df7e86afd3f085a0fd58f9c5acc02a65836f448a0fb700299a93ffae7"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.28-212650-646c24f/nav-pilot-linux-amd64"
      sha256 "29525927c98d6129dcf6b01c5c4f3e894f1ad68e76b390ec9bb22e646e6530ea"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
