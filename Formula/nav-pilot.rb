class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.05.07-121430-ffe0c25"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.05.07-121430-ffe0c25/nav-pilot-darwin-arm64"
      sha256 "5bc2b87248a15296d9bc8263a418a03206f90c0c84e50d095311d70bf393b339"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.05.07-121430-ffe0c25/nav-pilot-darwin-amd64"
      sha256 "595169b2cd476b956a63c6e84ccd3b8ffc93b77bb25bf9ad6f015e5c8f1900a6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.05.07-121430-ffe0c25/nav-pilot-linux-arm64"
      sha256 "7888b2eca8306843d0e3d34ebc1fc6f7cac438c32c210513bc030dad6e419300"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.05.07-121430-ffe0c25/nav-pilot-linux-amd64"
      sha256 "e755bace6d8f2a3e3f1c3ea5c8708a2243eb23235fccb45127f3294a278677f3"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
