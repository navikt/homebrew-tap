class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.07-142019-a84f250"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.07-142019-a84f250/nav-pilot-darwin-arm64"
      sha256 "42cc1ddc24360571d9230b75a1b52d3ece5d23915778cc86a3ba0f9d06e10636"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.07-142019-a84f250/nav-pilot-darwin-amd64"
      sha256 "aa50c51c9f0e73caf4f99506f929f72505e262b2d44304ed51978bcd1afd5939"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.07-142019-a84f250/nav-pilot-linux-arm64"
      sha256 "2d08f68f13af760fc22518e20394417927f0c2fffee21a7c00509908a8801a52"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.07-142019-a84f250/nav-pilot-linux-amd64"
      sha256 "ad1111e0bb925ba3e7333afb6de4675ff08350eb7b828405c34a77b385d7519b"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
