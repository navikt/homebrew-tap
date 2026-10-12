class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.10.12-150332-1999042"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.12-150332-1999042/nav-pilot-darwin-arm64"
      sha256 "9b357fbc4130dd0473dfab5d60dea7738599143a46e189bd2533d813c9ae3435"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.12-150332-1999042/nav-pilot-darwin-amd64"
      sha256 "18702b023a29c15c68df059ef504dab9b6eec7f90b134b3c452aa8523e7bbec8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.12-150332-1999042/nav-pilot-linux-arm64"
      sha256 "a77ee7569e39f5d6cc13d19b532c8b069e89d91e11967d37321af1a2abac755e"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.12-150332-1999042/nav-pilot-linux-amd64"
      sha256 "2dfd0fa17cabbca45984f0af758580e8160a41a8bf9c440030213bfa8e1b5f22"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
