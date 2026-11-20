class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.11.20-125605-3cee7c7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.20-125605-3cee7c7/nav-pilot-darwin-arm64"
      sha256 "361b2cc9cd01af9df963e1d2063089beade59916f525e3ae890008d14847f2a0"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.20-125605-3cee7c7/nav-pilot-darwin-amd64"
      sha256 "094ba2307f594d90bcecb43552a9892de2fb48a407ea2f4cf7aeb8e90660f436"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.20-125605-3cee7c7/nav-pilot-linux-arm64"
      sha256 "9bb10ce63b00652e09993eda1a7cbbcc9fbd5f118b76268a3a2964a9638e6f67"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.20-125605-3cee7c7/nav-pilot-linux-amd64"
      sha256 "0f431e39567411cb84b7de1a44218442eb6748969d79e3bbf4842f98449249ee"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
