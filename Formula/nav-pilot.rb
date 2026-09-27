class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.27-084407-8eec20f"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.27-084407-8eec20f/nav-pilot-darwin-arm64"
      sha256 "fa6019b849ce08f4caa15f117ec1b00f698baf5d40f498ef7e672df5d7bd2bb7"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.27-084407-8eec20f/nav-pilot-darwin-amd64"
      sha256 "eefdce11de772a58b4de61f242871a614edaa21a9652d589f6c67b660c423846"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.27-084407-8eec20f/nav-pilot-linux-arm64"
      sha256 "176b3cfb41ffa925c0a185136ee44009ceac5b2562c5a03938b914200721613c"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.27-084407-8eec20f/nav-pilot-linux-amd64"
      sha256 "7c6d59100380896253dcae4d046e7fd220c154d0d40f0a4987466b7158f37515"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
