class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.02-163819-bbf4ce4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.02-163819-bbf4ce4/nav-pilot-darwin-arm64"
      sha256 "a6e862f0140de8b7703fa8f1a8b7f41472b2ab7d89c06a397037541a92da5c01"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.02-163819-bbf4ce4/nav-pilot-darwin-amd64"
      sha256 "6fb061bfe57486af216955293d8ed4142c53ae92514dae03d6912df1877069bc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.02-163819-bbf4ce4/nav-pilot-linux-arm64"
      sha256 "a89fd9ea018eddf43622b99e55e51d5d2239627b1dfdb9beafaa345db347088c"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.02-163819-bbf4ce4/nav-pilot-linux-amd64"
      sha256 "f7e3707370c6ab34399505e2a389329fea8c82b83282eee52b6bf3a069a18df8"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
