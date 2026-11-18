class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.11.18-150006-ac35a63"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.18-150006-ac35a63/nav-pilot-darwin-arm64"
      sha256 "ecd025e5d8eb00765219f2f68cbf24b87954f38a709df76a836cf9499ac8044a"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.18-150006-ac35a63/nav-pilot-darwin-amd64"
      sha256 "d05682cba1ea9b49bed25dff9d1f9aab73898b9228c7319fc179fa89c885f1b8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.18-150006-ac35a63/nav-pilot-linux-arm64"
      sha256 "49bdc3eedfba7f7cbf186f4f8a7cdcadab77eb586f8a8180566fc4226b312d3e"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.18-150006-ac35a63/nav-pilot-linux-amd64"
      sha256 "2ba838d1cc8f89f4e4fd4f082375ad7bc75f162ca7b5456df34f201b9f79fc43"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
