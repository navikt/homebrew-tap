class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.07-222441-c80015c"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.07-222441-c80015c/nav-pilot-darwin-arm64"
      sha256 "274c8f10b3c776a990c30def9c644bdacb2865363985e106b758dddceb2976c4"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.07-222441-c80015c/nav-pilot-darwin-amd64"
      sha256 "7893446a668efef34e369b960b80edb2f30492fb49a1c13b1c70ceeb622a1577"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.07-222441-c80015c/nav-pilot-linux-arm64"
      sha256 "57fa296697a0e455ca350b69b8e7f8f212f7c033be28da3657769502b5538cfb"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.07-222441-c80015c/nav-pilot-linux-amd64"
      sha256 "12f2bfe3c74936868ab7a70788045e92c33b818f127c600af1a56fa572b425e4"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
