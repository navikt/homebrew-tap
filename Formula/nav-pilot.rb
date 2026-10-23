class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.10.23-173342-ef30bc9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.23-173342-ef30bc9/nav-pilot-darwin-arm64"
      sha256 "bd6e414fa4896d3068e408972cf04e34191cf8b4b945e671553741cc4cd288f6"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.23-173342-ef30bc9/nav-pilot-darwin-amd64"
      sha256 "3efcbb3d9750604d7720e05d9a80855d75d133444e9d7f3940ebd82e35b32f2f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.23-173342-ef30bc9/nav-pilot-linux-arm64"
      sha256 "0746bcaa4b6ebe45047f31ea53d56e60ae5065bedc27fcf8a81db6679aacba5a"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.23-173342-ef30bc9/nav-pilot-linux-amd64"
      sha256 "b329b9e5c59c096ef0a0db6e8bffd570036756622dda248d7365005507fa8432"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
