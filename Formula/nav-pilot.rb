class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.10.15-160300-d35826b"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.15-160300-d35826b/nav-pilot-darwin-arm64"
      sha256 "95046d85446895d3f41b10a3eaee2079c37eb2cd57477a6517d28eaceffa3adb"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.15-160300-d35826b/nav-pilot-darwin-amd64"
      sha256 "465362860477648f9f8ed7c42dff24cefc2282bcb9c234df8a4d2656658fe706"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.15-160300-d35826b/nav-pilot-linux-arm64"
      sha256 "2822f1e9ea8bec474f15d55873ae9dbba56d0c276473b3134cc114a08b92860a"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.15-160300-d35826b/nav-pilot-linux-amd64"
      sha256 "762dbc8876732b11b184f64c1643b8c31ce7b10ce0c2c433755be5b26e2bb281"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
