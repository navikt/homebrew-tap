class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.10.15-085355-ab2d38f"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.15-085355-ab2d38f/nav-pilot-darwin-arm64"
      sha256 "03babfc3d3b1dad6aa95fba12a22c1e8c8ddc5f65eb7045f9464f98d3734944e"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.15-085355-ab2d38f/nav-pilot-darwin-amd64"
      sha256 "e9b3c0da604d7ee19e37d9921d591a766e4cbcdb941f18c5a7542e1cb79070d7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.15-085355-ab2d38f/nav-pilot-linux-arm64"
      sha256 "5d20f86d1b1e1c4c74050c9fb8587613dab5c51ac686d029a29e48fc8b503272"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.15-085355-ab2d38f/nav-pilot-linux-amd64"
      sha256 "65147317e0377b764a052806c6397c5027ff1acff8d8c25cf9ed1177ac2a1d2a"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
