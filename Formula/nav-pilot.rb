class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.08-101426-90eefca"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.08-101426-90eefca/nav-pilot-darwin-arm64"
      sha256 "166d54a342ec3c38342e6a29ab8229496956bb883176d55b08ad9ec767684f48"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.08-101426-90eefca/nav-pilot-darwin-amd64"
      sha256 "8cbf90b094743bac3a179b35aa9e96233b2aebe1cfadf7113dae95c190fcba65"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.08-101426-90eefca/nav-pilot-linux-arm64"
      sha256 "f93d986ad8a27812c25d905c5ef7dc3c3cf2c58c4a206450aec93ad06ad0a868"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.08-101426-90eefca/nav-pilot-linux-amd64"
      sha256 "62e49a5e362b4736c22756a26ef22b0c6828e0c7e9e257bb25936481fae25791"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
