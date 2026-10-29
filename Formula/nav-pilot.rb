class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.10.29-160358-b09b544"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.29-160358-b09b544/nav-pilot-darwin-arm64"
      sha256 "da216f9bc5f40641b4d7988985aa76596f5823b55d40c96c018881cb1748e018"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.29-160358-b09b544/nav-pilot-darwin-amd64"
      sha256 "c5fdb553ba2d89cd02fdf7d65807f3ddf11373fdae54507cc9579ee68a2dbedd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.29-160358-b09b544/nav-pilot-linux-arm64"
      sha256 "f6236453a0f4451de2510864b4fe6f846089ca64cc9b1ca6032d5341206aa91c"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.29-160358-b09b544/nav-pilot-linux-amd64"
      sha256 "229192d94aeffcc7f79bafd02284694a9ccf8e9bc926c137baadfad9b9285511"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
