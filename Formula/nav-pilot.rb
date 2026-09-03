class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.03-090743-6dabb69"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.03-090743-6dabb69/nav-pilot-darwin-arm64"
      sha256 "216dc6cd01177da7acf99c8866e6f3413580e93b7c233b355a3e502bd1313438"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.03-090743-6dabb69/nav-pilot-darwin-amd64"
      sha256 "141fcac6fe7ab901ea2cc1ebacdeda384a5b253485ea689db4208f4dea2248c3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.03-090743-6dabb69/nav-pilot-linux-arm64"
      sha256 "2e50a84dc522b08826962daccbdb8325a04e1447e5db3b3c87ad4911c8ce1465"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.03-090743-6dabb69/nav-pilot-linux-amd64"
      sha256 "6d8c9484ebafc88d21876dee79279e93d92b0d70b0a245b9effda08794fc9290"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
